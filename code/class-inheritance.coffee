class Animal
  walk: ->
    console.log "I'm walking"

class Dog extends Animal
  sign: ->
    console.log 'Bark!'

(new Dog).sign()
# "Bark!"
