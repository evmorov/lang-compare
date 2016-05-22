import java.util.*;

class ArrayGetFirstAndLast {
  public static void main(String[] args) {
    List<String> arr = Arrays.asList("one", "two");
    System.out.println(arr.get(0));
    System.out.println(arr.get(arr.size() - 1));
  }
}
