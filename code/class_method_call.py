class Animal:
  def walk(self):
    self.bark()
    self._guard()
    print("I'm walking")

  def bark(self):
    print('Wuf!')

  # Private by convention
  def _guard(self):
    print('WUUUF!')

Animal().walk()
