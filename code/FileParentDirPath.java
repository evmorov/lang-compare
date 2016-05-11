import java.net.*;
import java.io.*;

class FileParentDirPath {
  public static void main(String[] args) {
    URL location = FileParentDirPath.class.getProtectionDomain().getCodeSource().getLocation();
    String parentPath = new File(location.getFile()).getParent();
    System.out.println(parentPath);
  }
}
// /private
