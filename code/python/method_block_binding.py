class Action:
  name = 'Ann'

  @staticmethod
  def say(sentence):
    print(sentence())


class Person:
  def __init__(self, name):
    self.name = name

  def greet(self):
    Action.say(lambda: "My name is %s!" % self.name)


Person('Alex').greet()
