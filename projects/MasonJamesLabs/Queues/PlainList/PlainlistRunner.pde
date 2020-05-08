void setup(){
  PalinList pl = new PalinList("one two three two one");
  pl.separate();
  //pl.isPalin();
  println(pl);
  pl.erase();
  //println(pl);
  //println(pl.isPalin());
  
  pl.setList("racecar car car racecar");
  pl.separate();
  println(pl);
  pl.erase();
  
  pl.setList("hello world hello world hi");
  pl.separate();
  println(pl);
  pl.erase();
  
  pl.setList("one two three four");
  pl.separate();
  println(pl);
  pl.erase();

}
