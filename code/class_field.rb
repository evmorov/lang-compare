class Animal
  def take(toy)
    @toy = toy
  end

  def play
    p "I'm playing with #{@toy}"
  end
end

animal = Animal.new
animal.take('a ball')
animal.play
# "I'm playing with a ball"
