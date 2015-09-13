//= require_tree .
//= require jquery
//= require bootstrap-sprockets

if (($(window).height() + 100) < $(document).height()) {
  $('#top-link-block').removeClass('hidden').affix({
    offset: {
      top: 1100
    }
  });
}

var $root = $('html, body');

$('a.scrollTop').click(function(event) {
  event.preventDefault();
  var href = $.attr(this, 'href');
  $root.animate({
    scrollTop: $(href).offset().top
  }, 500, function() {
    window.location.hash = '';
  });
  return false;
});

$('a.scroll').click(function(event) {
  event.preventDefault();
  var href = $.attr(this, 'href');
  $root.animate({
    scrollTop: $(href).offset().top
  }, 500, function() {
    window.location.hash = href;
  });
  return false;
});
