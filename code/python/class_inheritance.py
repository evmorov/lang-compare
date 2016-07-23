class Animal:
  def walk(self):
    print("I'm walking")

class Dog(Animal):
  def sing(self):
    print('Bark!')

Dog().walk()
