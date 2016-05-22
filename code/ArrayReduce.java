import java.util.*;

class ArrayReduce {
  public static void main(String[] args) {
    int sum = 0;
    for (int n : Arrays.asList(1, 2, 3))
      sum += n;
    System.out.println(sum);
  }
}
