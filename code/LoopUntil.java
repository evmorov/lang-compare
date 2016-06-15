import java.util.stream.IntStream;

class LoopUntil {
  public static void main(String[] args) {
    int i = IntStream.iterate(0, n -> n + 1).filter(n -> n == 3).findFirst().getAsInt();
    System.out.println(i);
  }
}
