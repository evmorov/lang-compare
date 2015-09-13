//= require_tree .
//= require jquery
//= require bootstrap-sprockets

if (($(window).height() + 100) < $(document).height()) {
  $('#top-link-block').removeClass('hidden').affix({
    offset: {
      top: 150
    }
  });
}
