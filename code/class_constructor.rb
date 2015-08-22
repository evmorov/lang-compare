class Animal
  def initialize(name)
    @name = name
  end

  def walk
    p "My name is #{@name} and I'm walking"
  end
end

Animal.new('Kelya').walk
# "My name is Kelya and I'm walking"
