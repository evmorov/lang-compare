class Animal
  constructor: (@name) ->

  walk: ->
    console.log "My name is #{@name} and I'm walking"

new Animal('Kelya').walk()
