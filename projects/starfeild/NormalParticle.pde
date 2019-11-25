class NormalParticle implements Particle{
  double x, y, angle, speed;
  int r, g, b, test=0;
  
  NormalParticle(){
   x=width/2;
   y=height/2;
   speed=Math.random()*20;
   angle=(Math.PI*3)*Math.random();
  }
   
   void move(){
    x+=Math.cos(angle)*speed; 
    y+=Math.sin(angle)*speed; 
    angle+=.057;
    
    if(x>670){
      x=670;
    } else if(x<70){
    x=70;
   }
   
    if(y>670){
      y=670;
    } else if(y<70){
    y=70;
   }
   
   }
   
   void show(){
     noStroke();
     if(test==0){
       randColor();
       test=200;
     }
     test--;
     colorMode(HSB);
     fill(r, g, b);
     ellipse((int)x, (int)y, 10, 10);
   }
   
   void randColor(){
    r=((int)(Math.random()*(155)+100)); 
    g=((int)(Math.random()*(155)+100)); 
    b=((int)(Math.random()*(155)+100)); 
   }
   
   
}
