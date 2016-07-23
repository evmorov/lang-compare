class Animal
  def walk
    puts "I'm walking"
  end
end

class Dog < Animal
  def sing
    puts 'Bark!'
  end
end

Dog.new.walk
