class Animal
  def eat(food)
    puts 'Om nom nom' if smell(food)
  end

  private

  def smell(food)
    food == 'meat'
  end
end

Animal.new.eat('meat')
