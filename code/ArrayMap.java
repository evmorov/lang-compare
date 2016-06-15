import java.util.*;
import java.util.stream.Collectors;

class ArrayMap {
  public static void main(String[] args) {
    List<Integer> arr    = Arrays.asList(1, 5, 10, 20);
    List<Integer> mapped = arr.stream().map(n -> n * 2).collect(Collectors.toList());
    System.out.println(mapped);
  }
}
