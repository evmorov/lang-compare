import java.util.regex.Matcher;
import java.util.regex.Pattern;

class StringRegex {
  public static void main(String[] args) {
    System.out.println(Pattern.compile("^b").matcher("apple").find());
    // false
    System.out.println(Pattern.compile("^a").matcher("apple").find());
    // true
  }
}
