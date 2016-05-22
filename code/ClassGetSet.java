class AnimalE {
  private String name;

  public void setName(String name) {
    this.name = name;
  }

  public String getName() {
    return this.name;
  }
}

class ClassGetSet {
  public static void main(String[] args) {
    AnimalE animal = new AnimalE();
    animal.setName("Kelya");
    System.out.println(animal.getName());
  }
}
