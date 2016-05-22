import java.util.*;

class HashGetValue {
  public static void main(String[] args) {
    Map<String, String> options = new HashMap<String, String>() {{
      put("fontSize", "10");
      put("fontFamily", "Arial");
    }};
    System.out.println(options.get("fontSize"));
  }
}
