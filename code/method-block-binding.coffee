class Action
  @say: (sentence) ->
    console.log sentence()

class Person
  constructor: (@name) ->

  greet: ->
    Action.say -> "My name is #{@name}!"
    # My name is undefined!
    Action.say => "My name is #{@name}!"
    # My name is Alex!

new Person('Alex').greet()
