module Moving
  def walk
    p "#{self.class.name} is walking"
  end
end

module Interacting
  def talk
    p "#{self.class.name} is talking"
  end
end

class Human
  include Moving
  include Interacting
end

human = Human.new
human.walk
# "Human is walking"
human.talk
# "Human is talking"
