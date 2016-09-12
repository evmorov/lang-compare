class Action
  @say: (sentence) ->
    console.log sentence()

class Person
  constructor: (@name) ->

  greet: ->
    Action.say -> "My name is #{@name}!"
    Action.say => "My name is #{@name}!"

new Person('Alex').greet()
