import java.util.Arrays;

class ArrayIterate {
  public static void main(String[] args) {
    Arrays.asList(1, 2).stream().sequential().forEach(System.out::println);
  }
}
