import java.util.Date;
import java.text.SimpleDateFormat;

class OtherDate {
  public static void main(String[] args) {
    String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    System.out.println(date);
  }
}
// 2016-05-12
