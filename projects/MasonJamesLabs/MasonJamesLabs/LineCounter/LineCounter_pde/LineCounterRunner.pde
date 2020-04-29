import java.util.Scanner;
import static java.lang.System.*;

  void setup(){
String[] number = {"9 10 5 20 1 2 3", "11 22 33 44 55 66 77 5 6 7", "48 52 29 100 50 293 4", "0", "100 90 95 98 100 97"};
 for( String line:number){
   println(new LineCounter(line)+"\n\n");
 }
}
