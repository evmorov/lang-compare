class Animal
  def initialize(name)
    @name = name
    greet
  end

  private

  def greet
    puts "Hello! My name is #{@name}"
  end
end

Animal.new('Kelya')
