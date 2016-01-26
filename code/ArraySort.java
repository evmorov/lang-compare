import java.util.*;

class ArraySort {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(4, 2, 3, 1);
    Collections.sort(arr);
    System.out.println(arr);
  }
}
// [1, 2, 3, 4]
