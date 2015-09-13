class Animal
  take: (@toy) ->

  play: ->
    console.log "I'm playing with #{@toy}"

animal = new Animal
animal.take('a ball')
animal.play()
# I'm playing with a ball
