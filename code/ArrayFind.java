import java.util.*;

class ArrayFind {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 5, 10, 20);
    int first = 0;
    for (int n : arr) {
      if (n % 2 == 0) {
        first = n;
        break;
      }
    }
    System.out.println(first);
  }
}
