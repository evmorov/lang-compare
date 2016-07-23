class Animal:
  def walk(self):
    print("I'm walking")

animal = Animal()
print(hasattr(animal, 'walk'))
