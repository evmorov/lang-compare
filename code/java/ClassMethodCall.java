class Animal {
  public void walk() {
    bark();
    guard();
    System.out.println("I'm walking");
  }

  public void bark() {
    System.out.println("Wuf!");
  }

  private void guard() {
    System.out.println("WUUUF!");
  }
}

class ClassMethodCall {
  public static void main(String[] args) {
    new Animal().walk();
  }
}
