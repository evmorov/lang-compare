import java.util.*;

class TypeNullTrueFalse {
  public static void main(String[] args) {
    List<String> emptyArray = new ArrayList<String>();
    System.out.println(emptyArray.isEmpty());

    String emptyString = "";
    System.out.println(emptyString.isEmpty());

    String nullVar = null;
    System.out.println(nullVar == null);
  }
}
