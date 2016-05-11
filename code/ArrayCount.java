import java.util.*;

class ArrayCount {
  public static void main(String[] args) {
    List<Integer> arr = Arrays.asList(1, 11, 111);
    int count = 0;
    for (int n : arr)
      if (n > 10)
        count++;
    System.out.println(count);
  }
}
// 2
