class Animal
  def walk
    bark
    guard
    puts "I'm walking"
  end

  def bark
    puts 'Wuf!'
  end

  private

  def guard
    puts 'WUUUF!'
  end
end

Animal.new.walk
