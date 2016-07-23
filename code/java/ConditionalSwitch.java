class ConditionalSwitch {
  public static void main(String[] args) {
    String s = "Hello!";
    switch (s) {
      case "Bye!":
        System.out.println("wrong");
        break;
      case "Hello!":
        System.out.println("right");
        break;
      default: break;
    }
  }
}
