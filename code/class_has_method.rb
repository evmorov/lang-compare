class Animal
  def walk
    puts "I'm walking"
  end
end

animal = Animal.new
puts animal.respond_to? :walk
