import java.util.stream.IntStream;

class LoopFor {
  public static void main(String[] args) {
    IntStream.range(1, 3+1).sequential().mapToObj(i -> i + ". Hi").forEach(System.out::println);
  }
}
