class ErrorTryCatch {
  public static void main(String[] args) {
    try {
      int i = 1 / 0;
    } catch (Exception e) {
      System.out.println("Can't divide");
    } finally {
      System.out.println("But that's ok");
    }
  }
}
