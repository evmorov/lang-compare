import java.util.regex.*;

class StringRegex {
  public static void main(String[] args) {
    System.out.println(Pattern.compile("^b").matcher("apple").find());
    System.out.println(Pattern.compile("^a").matcher("apple").find());
  }
}
