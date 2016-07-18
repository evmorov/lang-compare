class Animal
  walk: ->
    @bark()
    guard()
    console.log "I'm walking"

  bark: ->
    console.log 'Wuf!'

  guard = ->
    console.log 'WUUUF!'

new Animal().walk()
