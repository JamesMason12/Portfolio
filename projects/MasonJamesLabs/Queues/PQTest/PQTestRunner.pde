import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.PriorityQueue;

void setup(){
  PQTester test = new PQTester("one two three four five six seven");
  println(test);
  println(test.getMin());
  println(test.getNaturalOrder());
  
}
