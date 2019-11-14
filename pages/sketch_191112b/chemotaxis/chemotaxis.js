var img;
var count=0;
var tarx, tary;
var bacteria =[] ;
function preload(){
   img = loadImage("data/DrR.png");
}
 function setup()   
 {    
   createCanvas(800,500);
   background(0);
   for (var i=0; i<19; i++){
     bacteria[i]=new bacteria(width/2, height/2);
   }
   
   //initialize bacteria variables here   
 }   
 function draw()   
 {    
   background(0);
   for(var i=0; i<B.length; i++){
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
  
   constructor ( x,  y){
    this.pos=new PVector(x,y);
    this.vel= create.Vector.random2D();
   }
    show(){
     fill(255.255,255);
     ellipse(this.pos.x,this.pos.y, 20, 20);
      image(img, this.pos.x-20, this.pos.y-20, 50, 50);
   }
   
    move(){
   if(this.pos.x<width && this.pos.x>0 && this.pos.y>0 && this.pos.y<height){
     this.pos.add(this.vel);
   }
   if(this.pos.x>=width){
    this.pos.x-=(int)(Math.random()*10)+20; 
    this.vel=PVector.random2D();
   }
   if(this.pos.y>=height){
    this.pos.y-=(int)(Math.random()*10)+20; 
    this.vel=PVector.random2D();
   }
   
  if(this.pos.x<=600){
    this.pos.x+=(int)(Math.random()*10)+20; 
    this.vel=PVector.random2D();
   }
     if(this.pos.y<=300){
    this.pos.y+=(int)(Math.random()*10)+20; 
    this.vel=PVector.random2D();
   }
   if(frameCount%((int)(Math.random()*40)+40)==0){
     this.vel=PVector.random2D();
   }
   if(count>0)
   {
     B[count].this.pos.x=tarx;
     B[count].this.pos.y=tary;
     
   }
   
   
    }
 }
  function mouseClicked(){
      
        tarx=mouseX;
      tary=mouseY;
      
      if(count!=B.length){
        count++;
      }
   }  
   
