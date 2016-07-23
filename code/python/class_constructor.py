class Animal:
  def __init__(self, name):
    self.name = name

  def walk(self):
    print("My name is %s and I'm walking" % self.name)

Animal('Kelya').walk()
