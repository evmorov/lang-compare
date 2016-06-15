import java.util.*;

class ArrayCount {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 11, 111);
    System.out.println(arr.stream().count());
  }
}
