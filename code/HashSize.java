import java.util.*;

class HashSize {
  public static void main(String[] args) {
    Map<String, String> options = new HashMap<String, String>() {{
      put("fontSize", "10");
      put("fontFamily", "Arial");
    }};
    System.out.println(options.size());
  }
}
// 2
