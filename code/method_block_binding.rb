class Action
  def self.say(&sentence)
    @name = 'Ann'
    p sentence.call
  end
end

class Person
  def initialize(name)
    @name = name
  end

  def greet
    Action.say { "My name is #{@name}!" }
    # "My name is Alex!"
  end
end

Person.new('Alex').greet
