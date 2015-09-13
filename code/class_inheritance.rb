class Animal
  def walk
    p "I'm walking"
  end
end

class Dog < Animal
  def sing
    p 'Bark!'
  end
end

Dog.new.sing
# "Bark!"
