import java.util.*;

class ArrayIterateWithIndex {
  public static void main(String[] args) {
    List<String> arr = Arrays.asList("one", "two");
    for (int i = 0; i < arr.size(); i++) {
      System.out.println(arr.get(i));
      System.out.println(i);
    }
  }
}
