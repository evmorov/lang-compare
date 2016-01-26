class ErrorWithAMessage {
  public static void main(String[] args) {
    try {
      int i = 1 / 0;
    } catch (Exception e) {
      System.out.println(e.getMessage());
    }
  }
}
// / by zero
