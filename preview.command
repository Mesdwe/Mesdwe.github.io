#!/bin/bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

if [[ ! -x .venv/bin/python ]]; then
  if ! command -v python3 >/dev/null; then
    echo "Install Python 3, then run preview.command again." >&2
    exit 1
  fi
  python3 -m venv .venv
fi

if ! .venv/bin/python -c 'import mkdocs, material' 2>/dev/null; then
  echo "Installing preview dependencies..."
  .venv/bin/python -m pip install -r requirements.txt
fi

port="${1:-8000}"
echo "Open http://127.0.0.1:$port/ after MkDocs starts. Press Ctrl+C to stop."
exec .venv/bin/python -m mkdocs serve --dev-addr "127.0.0.1:$port"
