class Animal
  eat: (food) ->
    console.log 'Om nom nom' if smell(food)

  smell = (food) ->
    food is 'meat'

(new Animal).eat('meat')
# Om nom nom
