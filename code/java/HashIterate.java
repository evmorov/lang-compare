import java.util.*;

class HashIterate {
  public static void main(String[] args) {
    Map<String, String> options = new HashMap<String, String>() {{
      put("fontSize", "10");
      put("fontFamily", "Arial");
    }};
    for (Map.Entry<String, String> entry : options.entrySet()) {
      System.out.println(entry.getKey());
      System.out.println(entry.getValue());
    }
  }
}
