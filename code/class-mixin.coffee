class Module
  @include: (obj) -> @::[key] = value for key, value of obj

class Actions
  walk: ->
    console.log "#{@constructor.name} is walking"

class Interacting
  talk: ->
    console.log "#{@constructor.name} is talking"

class Human extends Module
  @include Actions::
  @include Interacting::

human = new Human
human.walk()
human.talk()
