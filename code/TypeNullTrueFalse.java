import java.util.*;

class TypeNullTrueFalse {
  public static void main(String[] args) {
    String notEmpty = "Not empty";
    System.out.println(notEmpty.isEmpty());

    String shouldBeNull = null;
    System.out.println(shouldBeNull == null);

    List<String> arr = new ArrayList<>();
    System.out.println(arr.isEmpty());
  }
}
