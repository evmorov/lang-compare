import java.io.*;

class OtherRunCommand {
  public static void main(String[] args) throws IOException, InterruptedException {
    String result = "";
    ProcessBuilder ps = new ProcessBuilder("java", "-version");
    ps.redirectErrorStream(true);
    Process pr = ps.start();
    try (BufferedReader in = new BufferedReader(new InputStreamReader(pr.getInputStream()))) {
    	String line;
    	while ((line = in.readLine()) != null)
    		result += line + "\n";
    	pr.waitFor();
    }
    System.out.println(result);
  }
}
