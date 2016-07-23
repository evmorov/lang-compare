class ErrorThrow {
  public static void main(String[] args) {
    try {
      throw new Exception("An error!");
    } catch (Exception e) {
      System.out.println(e.getMessage());
    }
  }
}
