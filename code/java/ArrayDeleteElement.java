import java.util.*;

class ArrayDeleteElement {
  public static void main(String[] args) {
    List<String> arr = new LinkedList<String>(Arrays.asList("a", "b", "c"));
    Iterator<String> iter = arr.iterator();
    while(iter.hasNext()) {
      if(iter.next().equalsIgnoreCase("b"))
        iter.remove();
    }
    System.out.println(arr);
  }
}
