import java.util.concurrent.ThreadLocalRandom;

class NumberRandom {
  public static void main(String[] args) {
    System.out.println(ThreadLocalRandom.current().nextInt(1, 2 + 1));
  }
}
