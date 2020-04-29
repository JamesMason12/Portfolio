String content;
String [] words;
String shedule = " ";

void setup() {
  size(800,800);
  Markov mc=new Markov();
 String [] str=loadStrings("data/shedule.txt");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    content += mc.generateText(s);
  }
 
}

void draw(){
  background(0);
  fill(255);
  textSize(45);
  text("The Shedule", 300, 300);
     textSize(20);
    text(shedule, 200, 500);
}


  void findword(){
    words = content.split(" ");
    shedule = " ";
    int max = words.length;
    int r = (int)(Math.random() * (10));
    int n = (int)((Math.random() * 8) + 5);
    for(int i = r; i<r+n; i++){
      shedule = shedule + words[i] + " ";
    }
  }

void mousePressed(){
  findword();
  redraw();
}
