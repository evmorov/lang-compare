import java.io.*;

class FileWrite {
  public static void main(String[] args) throws IOException {
    String filePath = System.getProperty("user.dir") + "/code/output.txt";
    try (Writer writer = new BufferedWriter(new OutputStreamWriter(
        new FileOutputStream(filePath), "utf-8"))) {
      writer.write("Some glorious content");
    }
  }
}
