public void setup()
{
size(500,500);
  background(0);
  stroke(255,255,255);
  noFill();
sierpinski(250, 480, 20,480, 480, 480);
}

public void sierpinski(int x1, int y1, int x2, int y2, int x3, int y3) 
{
  
  stroke(random(255), random(255), random(255));
 triangle(x1,y1, x2, y2, x3, y3);
  if(y1>=250){
    sierpinski(x1, y1-2, x2, y2, x3, y3);
  }else if(y1<=249&&y1>+2){
     sierpinski(x1, y1-2, x2, y2-2, x3, y3-2);
  }
  

  
}
