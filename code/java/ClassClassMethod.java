class Animal {
  public static void feed() {
    System.out.println("Om nom nom");
  }
}

class ClassClassMethod {
  public static void main(String[] args) {
    Animal.feed();
  }
}
