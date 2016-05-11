import java.util.*;

class MethodMultiArg {
  public static void main(String[] args) {
    new MethodMultiArg().sweets(true, "snickers", "twix", "bounty");
  }

  public void sweets(boolean buy, String... brands) {
    if (buy)
      System.out.println(Arrays.toString(brands));
  }
}
// [snickers, twix, bounty]
