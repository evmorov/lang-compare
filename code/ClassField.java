class AnimalD {
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
    AnimalD animal = new AnimalD();
    animal.take("a ball");
    animal.play();
  }
}
