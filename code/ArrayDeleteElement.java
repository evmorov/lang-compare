import java.util.*;

class ArrayDeleteElement {
  public static void main(String[] args) {
    List<String> arr = new LinkedList<>(Arrays.asList("a", "b", "c"));
    arr.removeIf(str -> str.equalsIgnoreCase("b"));
    System.out.println(arr);
  }
}
