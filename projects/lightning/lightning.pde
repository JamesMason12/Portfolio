int startX=450, startY=150, endX=450, endY=150;
int rx=0;
int lx=0;
int y;
boolean skeleton=false;
boolean t=false;
void setup()
{
  background(0);
    size(900,900);
    startX=150; 
   startY=450;
   endX=700; 
   endY=400;
   skeleton=false; 
}
void draw()
{

  noStroke();

  if(mousePressed==true){
    if(frameCount%(double)1==0)
    {
      reset();
    
     
    }
    if(frameCount%10==0){
    background(0);
    }
  }
  if(mousePressed==false){
    background(0);
    man();
    otherman();
  }
  text();
otherman();
man();
zapman();
legs();
skelecheck();
ball();
strokeWeight(8);
  stroke(42, 82, (int)(Math.random()*60+192));
if(mousePressed==true){
while(endX<900)
{ 
    
  endX=startX+(int)(Math.random()*9)+0;
  endY=startY+(int)(Math.random()*9)-4;
  line(startX, startY, endX, endY);
  startX=endX;
  startY=endY;
}



}
}
void mousePressed()
{
   reset();
   y=-60;
   rx=-15;
   lx=15;
   t=true;
}

void reset()
{
  startX=150; 
   startY=450;
   endX=700; 
   endY=400;
}

void man(){
 if (mousePressed==false){
   stroke(255,255,255); 
  strokeWeight(1);
  fill(255, 172, 99);
  rect(70, 420, 40, 20);//right arm
  rect(90, 420, 20, 100);//body
  ellipse(100, 400, 50, 50);//head
  rect(70, 460, 40, 20);//left arm
  startX=77; 
   startY=424;
   endX=79; 
   endY=469;
 }
}
void zapman(){
    if(mousePressed==true){
  stroke(255,255,255); 
  strokeWeight(1);
  fill(255, 172, 99);
  rect(90, 450, 60, 20);//left arm
  rect(90, 420, 20, 100);//body
  ellipse(100, 400, 50, 50);//head
  rect(100, 430, 60, 20);//right arm
  }
 }

void otherman(){
   strokeWeight(1);
  stroke(255,255,255); 
  fill(255, 172, 99);
  rect(775+rx, 430+y, 20, 60);//right arm
  rect(790, 420, 20, 100);//body
  ellipse(800, 400, 50, 50);//head
  rect(800+lx, 430+y, 20, 60);//left arm
 
  

}
void legs(){
   strokeWeight(1);
  stroke(255,255,255); 
  fill(29, 39, 59);
  rect(90, 500, 30, 20);// pelvis
  rect(105, 500, 17, 60);//left leg
   rect(85, 500, 17, 60);//right leg
   rect(790, 500, 30, 20);// other pelvis
  rect(805, 500, 17, 60);// other left leg
   rect(785, 500, 17, 60);//other right leg
}

void skeleton(){
 stroke(0,0,0);
  strokeWeight(1);
  fill(255,255,255);
  rect(807, 505, 10, 50);//left leg
   rect(788, 505, 10, 50);//right leg
   rect(795, 420, 10, 90);//body
   rect(788, 505, 30, 10);
    rect(817, 375, 15, 50);//left arm
   ellipse(800, 400, 43, 43);
    rect(762, 375, 15, 50);//right arm
    fill(0,0,0);
    ellipse(790, 395, 13, 13);//left eye
    ellipse(810, 395, 13, 13);//left eye
}

void skelecheck(){
  if (mousePressed==true){
    skeleton=true;
    
  }
  if (skeleton==true){
    skeleton();
    
  }
 if (mousePressed==false){
   skeleton=false;
   ball();
 }
 if (skeleton==false){
   background(0);
   man();
   otherman();
   legs();
   ball();
   text();
 }
}

void ball(){
 if(mousePressed==false){
  strokeWeight(5);
  stroke(40, 49, 222);
  fill(87, 95, 247);
  ellipse(70, 450, 20, 20);
 }
}
void text(){
  fill(255,255,255);
  textSize(32);
  text("Juuls", 75,350 );
  text("Your Lungs", 720, 350);
  if (t==true){
    textSize(60);
    fill(255,0,0);
    text("Don't vape kids", 210, 200);
    text("You'll die", 280, 700);
  }
  if(skeleton==true){
    fill(255,255,255);
    ellipse(800, 280, 100, 70);
    fill(0,0,0);
    textSize(20);
    text("Ooh ahh", 755, 275);
    text("my lungs", 755, 295);
  }
  
}
void mouseReleased(){
  background(0);
  man();
  otherman();
  y=0;
  rx=0;
  lx=0;
  
  
}
