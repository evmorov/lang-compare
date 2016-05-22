class AnimalJ {
  private String name;

  public AnimalJ(String name) {
    this.name = name;
    greet();
  }

  private void greet() {
    System.out.println("Hello! My name is " + this.name);
  }
}

class ClassPrivateMethodAccessInstance {
  public static void main(String[] args) {
    new AnimalJ("Kelya");
  }
}
