module Moving
  def walk
    puts "#{self.class.name} is walking"
  end
end

module Interacting
  def talk
    puts "#{self.class.name} is talking"
  end
end

class Human
  include Moving
  include Interacting
end

human = Human.new
human.walk
human.talk
