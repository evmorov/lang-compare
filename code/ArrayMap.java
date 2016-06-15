import java.util.*;

class ArrayMap {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 5, 10, 20);
    List<Integer> mapped = new ArrayList<>();
    for (int n : arr)
      mapped.add(n * 2);
    System.out.println(mapped);
  }
}
