import java.util.Scanner;
import static java.lang.System.*;

public class LineTotaller {
  private String line;

  public LineTotaller() {
    setLine("");
  }

  public LineTotaller(String s) {
    setLine(s);
  }

  public void setLine(String s) {
    line=s;
  }

  public int getSum() {
    int total = 0;
    Scanner scan= new Scanner(line);
    while (scan.hasNext()) {
      total += scan.nextInt();
    }
    return total;
  }

  public String getLine() {
    return line;
  }

  public String toString() {
    return getLine()+"\n"+getSum();
  }
}
