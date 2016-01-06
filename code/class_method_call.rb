class Animal
  def walk
    bark
    guard
    p "I'm walking"
  end

  def bark
    p 'Wuf!'
  end

  private

  def guard
    p 'WUUUF!'
  end
end

Animal.new.walk
# "Wuf!"
# "WUUUF!"
# "I'm walking"
