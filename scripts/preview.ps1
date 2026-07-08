$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
Set-Location $Root

function Find-Python {
  $candidates = @(
    "py",
    "python",
    "$env:USERPROFILE\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
  )

  foreach ($candidate in $candidates) {
    $command = Get-Command $candidate -ErrorAction SilentlyContinue
    if ($command) {
      return $command.Source
    }
  }

  return $null
}

function Test-PortAvailable {
  param([int]$Port)

  $listener = $null
  try {
    $listener = [System.Net.Sockets.TcpListener]::new([System.Net.IPAddress]::Parse("127.0.0.1"), $Port)
    $listener.Start()
    return $true
  }
  catch {
    return $false
  }
  finally {
    if ($listener) {
      $listener.Stop()
    }
  }
}

function Test-MkDocs {
  param([string]$PythonPath)

  $previousErrorActionPreference = $ErrorActionPreference
  $ErrorActionPreference = "Continue"
  try {
    & $PythonPath -m mkdocs --version *> $null
    return ($LASTEXITCODE -eq 0)
  }
  finally {
    $ErrorActionPreference = $previousErrorActionPreference
  }
}

$python = Find-Python
if (-not $python) {
  Write-Host "Could not find Python. Please install Python 3, then run preview.cmd again." -ForegroundColor Red
  exit 1
}

$venvPython = Join-Path $Root ".venv\Scripts\python.exe"
if (-not (Test-Path $venvPython)) {
  Write-Host "Preparing the local preview environment..."
  & $python -m venv .venv
  if ($LASTEXITCODE -ne 0) {
    Write-Host "Could not create the local preview environment." -ForegroundColor Red
    exit $LASTEXITCODE
  }
}

if (-not (Test-MkDocs $venvPython)) {
  Write-Host "Installing preview requirements..."
  & $venvPython -m pip install -r requirements.txt
  if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Could not install preview requirements." -ForegroundColor Red
    Write-Host "Check your internet connection, then run preview.cmd again."
    exit $LASTEXITCODE
  }
}
else {
  Write-Host "Preview requirements are ready."
}

if (-not (Test-MkDocs $venvPython)) {
  Write-Host "MkDocs is still not available in the local preview environment." -ForegroundColor Red
  exit 1
}

$port = 8000
while (-not (Test-PortAvailable $port)) {
  $port++
}

$url = "http://127.0.0.1:$port/"
Write-Host ""
Write-Host "Starting local preview: $url" -ForegroundColor Cyan
Write-Host "Leave this window open while previewing. Press Ctrl+C to stop." -ForegroundColor DarkGray
Write-Host ""

Start-Process $url
& $venvPython -m mkdocs serve -a "127.0.0.1:$port"
