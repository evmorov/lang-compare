class Animal {
  private String name;

  public Animal(String name) {
    this.name = name;
    greet();
  }

  private void greet() {
    System.out.println("Hello! My name is " + this.name);
  }
}

class ClassPrivateMethodAccessInstance {
  public static void main(String[] args) {
    new Animal("Kelya");
  }
}
// Hello! My name is Kelya
