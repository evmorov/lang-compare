class Animal {
  public void walk() {
    System.out.println("I'm walking");
  }
}

class ClassDeclare {
  public static void main(String[] args) {
    new Animal().walk();
  }
}
