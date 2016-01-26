enum Color {
  RED("#FF0000"),
  GREEN("#00FF00");

  private String color;

  private Color(String color) {
    this.color = color;
  }

  public String toString() {
    return color;
  }
}

class OtherStructureConstantList {
  public static void main(String[] args) {
    System.out.println(Color.GREEN);
  }
}
// #00FF00
