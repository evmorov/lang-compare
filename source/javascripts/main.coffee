if $(window).height() + 100 < $(document).height()
  $('#top-link-block').removeClass('hidden').affix(offset: { top: 1100 })

scroll = (element, toTop = false) ->
  $(element).click (event) ->
    event.preventDefault()
    href = $.attr(this, 'href')
    $('html, body').animate { scrollTop: $(href).offset().top }, 400, ->
      window.location.hash = if toTop then '' else href
      return
    false

scroll('a.scrollTop', true)
scroll('a.scroll')
