class LoopBreak {
  public static void main(String[] args) {
    for (int i = 0; i < 3; i++) {
      System.out.println((i + 1) + ". Hi");
      if (i == 1)
        break;
    }
  }
}
// 1. Hi
// 2. Hi
