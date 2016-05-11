import java.util.*;

class ArraySelect {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 5, 10, 20);
    List<Integer> all = new ArrayList<Integer>();
    for (int n : arr)
      if (n % 2 == 0)
        all.add(n);
    System.out.println(all);
  }
}
// [10, 20]
