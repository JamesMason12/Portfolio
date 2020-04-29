import static java.lang.System.*;
int count=0;

public class LineCounter {

  private String line;

  public LineCounter()
  {
    setLine("");
  }

  public LineCounter(String s) {
    setLine(s);
  }

  public void setLine(String s) {
    line=s;
  }

  public int getCount(){

    return line.split(" ").length;
  }

  public String getLine() {
    return line;
  }

  public String toString(){
    return getLine()+"\n"+getCount();
  }
}
