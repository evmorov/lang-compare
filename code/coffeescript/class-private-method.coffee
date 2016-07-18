class Animal
  eat: (food) ->
    console.log 'Om nom nom' if isMeat(food)

  isMeat = (food) ->
    food is 'meat'

new Animal().eat('meat')
