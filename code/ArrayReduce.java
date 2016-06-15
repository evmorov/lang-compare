import java.util.stream.IntStream;

class ArrayReduce {
  public static void main(String[] args) {
    int sum = IntStream.of(1, 2, 3).sum();
    System.out.println(sum);
  }
}
