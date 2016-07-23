import java.net.*;

class FileDirPath {
  public static void main(String[] args) {
    URL location = FileDirPath.class.getProtectionDomain().getCodeSource().getLocation();
    System.out.println(location.getFile());
  }
}
