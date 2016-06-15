class Animal:
  def __init__(self, name):
    self.name = name
    self._greet()

  def _greet(self):
    print("Hello! My name is %s" % self.name)

Animal('Kelya')
