class Animal
  def initialize(name)
    @name = name
    greet
  end

  private

  def greet
    p "Hello! My name is #{@name}"
  end
end

Animal.new('Kelya')
# "Hello! My name is Kelya"
