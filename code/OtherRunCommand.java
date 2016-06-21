import java.io.*;
import java.util.stream.Collectors;

class OtherRunCommand {
  public static void main(String[] args) throws IOException, InterruptedException {
    final String result;
    ProcessBuilder ps = new ProcessBuilder("java", "-version");
    ps.redirectErrorStream(true);
    Process pr = ps.start();
    try (BufferedReader in = new BufferedReader(new InputStreamReader(pr.getInputStream()))) {
      result = in.lines().collect(Collectors.joining("\n"));
      pr.waitFor();
    }
    System.out.println(result);
  }
}
