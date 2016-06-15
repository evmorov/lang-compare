class Animal:
  def take(self, toy):
    self.toy = toy

  def play(self):
    print("I'm playing with %s" % self.toy)

animal = Animal()
animal.take('a ball')
animal.play()
