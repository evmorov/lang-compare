import java.io.*;

class FileRead {
  public static void main(String[] args) throws IOException {
    String filePath = System.getProperty("user.dir") + "/code/file.txt";
    String content;
    try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
      StringBuilder sb = new StringBuilder();
      String line = br.readLine();
      while (line != null) {
        sb.append(line);
        sb.append(System.lineSeparator());
        line = br.readLine();
      }
      content = sb.toString();
    }
    System.out.println(content);
  }
}
// Hello
// World
//
