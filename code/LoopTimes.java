import java.util.stream.IntStream;

class LoopTimes {
  public static void main(String[] args) {
    IntStream.range(0, 3).sequential().mapToObj(i -> "Hi").forEach(System.out::println);
  }
}
