import java.util.*;

class ArrayConcat {
  public static void main(String[] args) {
    List<Integer> arr1 = Arrays.asList(1, 2);
    List<Integer> arr2 = Arrays.asList(3, 4);
    List<Integer> concated = new ArrayList<Integer>(arr1);
    concated.addAll(arr2);
    System.out.println(concated);
  }
}
// [1, 2, 3, 4]
