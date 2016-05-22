import java.util.*;

class ArrayMulti {
  public static void main(String[] args) {
    List<List<String>> arr = new ArrayList<List<String>>();
    arr.add(Arrays.asList("first", "second"));
    arr.add(Arrays.asList("third", "forth"));
    System.out.println(arr.get(1).get(1));
  }
}
