class MethodReturn {
  public static void main(String[] args) {
    MethodReturn obj = new MethodReturn();
    System.out.println(obj.divide(0, 10));
    System.out.println(obj.divide(10, 5));
  }

  public int divide(int a, int b) {
    if (a == 0)
      return 0;
    return a / b;
  }
}
// 0
// 2
