import java.util.stream.IntStream;

class LoopNext {
  public static void main(String[] args) {
    IntStream.range(0, 3)
      .sequential()
      .filter(i -> i != 1)
      .mapToObj(i -> (i + 1) + ". Hi")
      .forEach(System.out::println);
  }
}
