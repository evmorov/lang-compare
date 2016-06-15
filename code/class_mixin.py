class Moving:
  def walk(self):
    print("%s is walking" % self.__class__.__name__)

class Interacting:
  def talk(self):
    print("%s is talking" % self.__class__.__name__)

class Human(Moving, Interacting):
    pass

human = Human()
human.walk()
human.talk()
