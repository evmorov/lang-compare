import java.util.Arrays;

class StringSplit {
  public static void main(String[] args) {
    String s = "I like beer";
    String[] arr = s.split(" ");
    System.out.println(Arrays.toString(arr));
  }
}
// [I, like, beer]
