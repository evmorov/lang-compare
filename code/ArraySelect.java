import java.util.*;
import java.util.stream.Collectors;

class ArraySelect {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 5, 10, 20);
    List<Integer> all = arr.stream().filter(n -> n % 2 == 0).collect(Collectors.toList());
    System.out.println(all);
  }
}
