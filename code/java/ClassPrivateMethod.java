class Animal {
  public void eat(String food) {
    if (isMeat(food))
      System.out.println("Om nom nom");
  }

  private boolean isMeat(String food) {
    return food.equals("meat");
  }
}

class ClassPrivateMethod {
  public static void main(String[] args) {
    new Animal().eat("meat");
  }
}
