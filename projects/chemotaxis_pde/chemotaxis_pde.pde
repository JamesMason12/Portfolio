PImage img;
int count=0;
int tarx, tary;
Bacteria [] B;
 void setup()   
 {    
   size(800,500);
   background(0);
      img = loadImage("data/DrR.png");
   B=new Bacteria[20];
   for (int i=0; i<B.length; i++){
     B[i]=new Bacteria(width/2, height/2);
   }
   
   //initialize bacteria variables here   
 }   
 void draw()   
 {    
   background(0);
   for(int i=0; i<B.length; i++){
     B[i].show();
     if(i>=count&&count!=B.length){
      B[i].move(); 
     }
     
   }
   fill(255,155,155);
   rect(590,290, 5, 200);
   rect(590, 290, 200, 5);
   textSize(40);
   text("Dr. R Jail",610, 270);
   text("Free Them!", 300, 50);
   
   //move and show the bacteria   
 }  
 class Bacteria    
 {   
  private  PVector pos, vel;
  
   Bacteria (int x, int y){
    pos=new PVector(x,y);
    vel= PVector.random2D();
   }
   void show(){
     fill(255.255,255);
     ellipse(pos.x,pos.y, 20, 20);
      image(img, pos.x-20, pos.y-20, 50, 50);
   }
   
   void move(){
   if(pos.x<width && pos.x>0 && pos.y>0 && pos.y<height){
     pos.add(vel);
   }
   if(pos.x>=width){
    pos.x-=(int)(Math.random()*10)+20; 
    vel=PVector.random2D();
   }
   if(pos.y>=height){
    pos.y-=(int)(Math.random()*10)+20; 
    vel=PVector.random2D();
   }
   
  if(pos.x<=600){
    pos.x+=(int)(Math.random()*10)+20; 
    vel=PVector.random2D();
   }
     if(pos.y<=300){
    pos.y+=(int)(Math.random()*10)+20; 
    vel=PVector.random2D();
   }
   if(frameCount%((int)(Math.random()*40)+40)==0){
     vel=PVector.random2D();
   }
   if(count>0)
   {
     B[count].pos.x=tarx;
     B[count].pos.y=tary;
     
   }
   
   
    }
 }
  void mouseClicked(){
      
        tarx=mouseX;
      tary=mouseY;
      
      if(count!=B.length){
        count++;
      }
   }  
   
