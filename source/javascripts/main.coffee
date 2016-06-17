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

$('.lang-item').click (e) ->
  langUrl1 = $(@).data('lang-url')
  side1 = $(@).parent().parent().data('lang-side')
  side2 = if side1 is 1 then 2 else 1
  langUrl2 = $("div[data-lang-side='#{side2}']").find('span.lang-selected').data('lang-url')

  targetUrl =
    if side1 is 1
      "#{langUrl1}-#{langUrl2}"
    else
      "#{langUrl2}-#{langUrl1}"
  siteUrl = $('#site-url').html()
  targetUrl = "#{siteUrl}/#{targetUrl}" unless siteUrl is '/'
  window.location.href = "/#{targetUrl}"
  e.preventDefault()
  return
