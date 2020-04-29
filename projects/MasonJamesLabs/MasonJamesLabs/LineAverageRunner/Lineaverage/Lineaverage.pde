import java.util.Scanner;
import static java.lang.System.*;

public class LineAverage {

  private String line;

  public LineAverage() {
  }

  public LineAverage(String s) {
    setLine(s);
  }

  public void setLine(String s) {
    line=s;
  }

  public int getCount() {
    int count=0;    
    return count;
  }


  public int getSum() {

    int sum=0;
    return sum;
  }

  public double getAverage() {
    int total = 0;
    int count=0;
    double average=0.0;
    Scanner scan= new Scanner(line);
    while (scan.hasNext()) {
      total += scan.nextInt();
      count ++;
    }
    average = total / count;
    return average;
  }

  public String getLine() {

    return line;
  }

  public String toString() {

    return getLine()+"\n"+getAverage();
  }
}
