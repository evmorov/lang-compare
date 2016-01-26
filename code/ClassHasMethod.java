import java.lang.reflect.*;

class Animal {
  public void walk() {
    System.out.println("I'm walking");
  }
}

class ClassHasMethod {
  public static void main(String[] args) {
    Animal animal = new Animal();
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
// true
