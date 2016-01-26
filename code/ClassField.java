class Animal {
  private String toy;

  public void take(String toy) {
    this.toy = toy;
  }

  public void play() {
    System.out.println("I'm playing with " + this.toy);
  }
}

class ClassField {
  public static void main(String[] args) {
    Animal animal = new Animal();
    animal.take("a ball");
    animal.play();
  }
}
// I'm playing with a ball
