class Module
  @include: (obj) ->
    for key, value of obj when key not in ['extended','included']
      @::[key] = value
    obj.included?.apply(@)
    @

class MathCustom
  PI: 3.141592653589793

class Foo extends Module
  @include MathCustom::
  isPI: (number) ->
    @PI is number

console.log (new Foo).isPI 3.141592653589793
# true
