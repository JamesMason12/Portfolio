import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Collections;
import static java.lang.System.*;

void setup() {
  String [] rows = loadStrings("person.txt");
  List<Person>myList = new ArrayList<Person>();

  for (String str : rows) {
    Scanner scan = new Scanner(str);
    myList.add(new Person(scan.nextInt(), scan.nextInt(), scan.nextInt(), scan.next()));
      scan.close();
  }
  Collections.sort(myList);

  for (Person p : myList) {
    println(p);
  }
}
