(function () {
  function updateHeaderTopic() {
    var source = document.querySelector("[data-header-title]");
    var target = document.querySelector('[data-md-component="header-topic"] .md-ellipsis');

    if (!source || !target) {
      return;
    }

    target.textContent = source.getAttribute("data-header-title") || source.textContent.trim();
  }

  document.addEventListener("DOMContentLoaded", updateHeaderTopic);

  if (typeof document$ !== "undefined") {
    document$.subscribe(updateHeaderTopic);
  }

  updateHeaderTopic();
})();
