class Action
  def self.say(&sentence)
    @name = 'Ann'
    puts sentence.call
  end
end

class Person
  def initialize(name)
    @name = name
  end

  def greet
    Action.say { "My name is #{@name}!" }
  end
end

Person.new('Alex').greet
