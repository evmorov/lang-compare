class ProccessElements
  @element: (el_name) ->
    do => @::[el_name] = (content) ->
      "<#{el_name}>#{content}</#{el_name}>"

class HtmlELements extends ProccessElements
  @element 'div'
  @element 'span'

console.log (new HtmlELements).div('hello')
