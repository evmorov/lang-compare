class Greetings
  hey: ->
    console.log 'How are you?'
  hi: @::hey

(new Greetings).hi()
# How are you?
