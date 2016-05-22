import java.net.*;

class FilePath {
  public static void main(String[] args) {
    URL location = FilePath.class.getProtectionDomain().getCodeSource().getLocation();
    System.out.println(location.getFile() + "FilePath.class");
  }
}
