if ($(window).height() + 100 < $(document).height()) {
  $("#top-link-block")
    .removeClass("hidden")
    .affix({ offset: { top: 1100 } });
}

const scroll = (element, toTop = false) => {
  $(element).click(function (event) {
    event.preventDefault();
    const href = $.attr(this, "href");
    $("html, body").animate({ scrollTop: $(href).offset().top }, 400, () => {
      window.location.hash = toTop ? "" : href;
    });
    return false;
  });
};

scroll("a.scrollTop", true);
scroll("a.scroll");

$(".lang-item").click(function (e) {
  const langUrl1 = $(this).data("lang-url");
  const side1 = $(this).parent().parent().data("lang-side");
  const side2 = side1 === 1 ? 2 : 1;
  const langUrl2 = $(`div[data-lang-side='${side2}']`)
    .find("span.lang-selected")
    .data("lang-url");

  let targetUrl;
  if (side1 === 1) {
    targetUrl = `/${langUrl1}-${langUrl2}`;
  } else {
    targetUrl = `/${langUrl2}-${langUrl1}`;
  }

  const rootUrl = $("#root-url").html();
  if (rootUrl !== "/") {
    targetUrl = `${rootUrl}${targetUrl}`;
  }

  window.location.href = targetUrl;
  e.preventDefault();
});
