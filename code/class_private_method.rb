class Animal
  def eat(food)
    p 'Om nom nom' if smell(food)
  end

  private

  def smell(food)
    food.eql? 'meat'
  end
end

Animal.new.eat('meat')
# "Om nom nom"
