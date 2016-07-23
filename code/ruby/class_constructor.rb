class Animal
  def initialize(name)
    @name = name
  end

  def walk
    puts "My name is #{@name} and I'm walking"
  end
end

Animal.new('Kelya').walk
