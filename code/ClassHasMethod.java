import java.lang.reflect.*;

class AnimalF {
  public void walk() {
    System.out.println("I'm walking");
  }
}

class ClassHasMethod {
  public static void main(String[] args) {
    AnimalF animal = new AnimalF();
    boolean hasMethod = false;
    for (Method m : animal.getClass().getMethods()) {
      if (m.getName().equals("walk")) {
        hasMethod = true;
        break;
      }
    }
    System.out.println(hasMethod);
  }
}
