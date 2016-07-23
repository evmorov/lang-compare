class Animal
  def take(toy)
    @toy = toy
  end

  def play
    puts "I'm playing with #{@toy}"
  end
end

animal = Animal.new
animal.take('a ball')
animal.play
