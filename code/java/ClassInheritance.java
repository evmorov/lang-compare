class Animal {
  public void walk() {
    System.out.println("I'm walking");
  }
}

class Dog extends Animal {
  public void sing() {
    System.out.println("Bark!");
  }
}

class ClassInheritance {
  public static void main(String[] args) {
    new Dog().walk();
  }
}
