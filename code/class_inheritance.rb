class Animal
  def walk
    p "I'm walking"
  end
end

class Dog < Animal
  def sign
    p 'Bark!'
  end
end

Dog.new.sign
# "Bark!"
