import java.util.Scanner;
String s;
PFont font;
Stringparser sp;//= new Stringparser();


void setup() {
  size(650,550);
  background(255);
  try {
    Scanner scan= new Scanner(new File("\\C:\\Users\\macem_hjfryfj\\OneDrive\\Desktop\\Portfolio\\projects\\MasonJamesLabs\\parser\\data\\Sherlock.txt"));
    String str="";
   // int num=scan.nextInt();
   String []s=loadStrings("data/she.txt");
   String all=join(s, " ");
// println(all);
  //println("hello");
    sp= new Stringparser(all);
   //println(sp);
        textSize(27);
    fill(25,25,25);
    text("The adventures of sherlock Holmes", 50, 80);
    textSize(40);
    text("Syllables: "+sp.countSyllables(str), 50, 130);
    text("Sentences: "+sp.countSentences(str), 50, 190);
    text("Grade Level: "+sp.getGrade(), 50, 250);
    text("Flesch readablility: "+sp.getFlesch(), 50, 310); 
    
  }
  catch(Exception e) {
    println(e);
  }
}
