import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenCounters
{
  private String line;

  public OddEvenCounters() {
  }

  public OddEvenCounters(String s) {
    setLine(s);
  }

  public void setLine(String s) {
    line=s;
  }
  public String getLine() {
    return line;
  }

  public int getEvenCount() {
    int count=0;
    Scanner scan= new Scanner(line);
    while (scan.hasNext()) {
      if (scan.nextInt()%2==0) {
        count ++;
      }
    }
    return count;
  }

  public int getOddCount() {
    int count2= 0;
    Scanner scan= new Scanner(line);
    while (scan.hasNext()) {
      if (scan.nextInt()%2!=0) {
      }
      count2 ++;
    }
    return count2;
  }

  public String toString() {
    return getLine()+"\n"+"The even count is:" + getEvenCount()+"\n"+"The odd count is:"+getOddCount();
  }
}
