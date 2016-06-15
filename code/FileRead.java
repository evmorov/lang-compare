import java.io.*;
import java.util.stream.Collectors;

class FileRead {
  public static void main(String[] args) throws IOException {
    String filePath = System.getProperty("user.dir") + "/code/file.txt";
    String content;
    try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
      content = br.lines().collect(Collectors.joining(System.lineSeparator()))+System.lineSeparator();
    }
    System.out.println(content);
  }
}
