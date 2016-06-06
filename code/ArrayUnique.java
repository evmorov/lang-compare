import java.util.*;

class ArrayUnique {
  public static void main(String[] args) {
    List<String> arr = Arrays.asList("a", "b", "a");
    Set<String> unique = new LinkedHashSet<>(arr);
    System.out.println(unique);
  }
}
