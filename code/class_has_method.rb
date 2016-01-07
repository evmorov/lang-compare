class Animal
  def walk
    p "I'm walking"
  end
end

animal = Animal.new
p animal.respond_to? :walk
# true
