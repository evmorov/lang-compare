class Animal
  def eat(food)
    puts 'Om nom nom' if meat? food
  end

  private

  def meat?(food)
    food == 'meat'
  end
end

Animal.new.eat('meat')
