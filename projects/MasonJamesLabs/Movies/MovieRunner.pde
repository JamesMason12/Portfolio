import java.util.List;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collections;

MovieList ml = new MovieList();
String text = "";
int count = 0, index=0;
float score=0;
String [] theWords;

void setup() {
  size(800, 800);
  ml.loadMovies();

  theWords=loadStrings("word.txt");
  for (String s : theWords) {
    int c = ml.countWords(s);
    println(s+" appears "+c+" number of times");
  }
}


void draw() {
  background(#021440);
  if(frameCount%60==0){
    index = index+1==theWords.length ? 0 : index+1;
    text = theWords[index];
    count = ml.countWords(text);
    score = ml.getAverageScore();
  }
  fill(#4CB1F7);
  textSize(50);
  textAlign(CENTER);
  rectMode(CENTER);
  text(text+" appears "+count+" \ntimes ", width/2, height/2, width, height/4);
  text("Score:  ",score,350,100);
}
