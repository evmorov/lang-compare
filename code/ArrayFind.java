import java.util.*;

class ArrayFind {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 5, 10, 20);
    int first = arr.stream().filter(n -> n % 2 == 0).findFirst().get();
    System.out.println(first);
  }
}
