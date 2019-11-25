class NormalParticle {

  
  constructor(){
    this.test=0;
   this.x=width/2;
   this.y=height/2;
   this.speed=Math.random()*20;
   this.angle=(Math.PI*2)*Math.random();
  }
   
    move(){
    this.x+=Math.cos(this.angle)*this.speed; 
    this.y+=Math.sin(this.angle)*this.speed; 
    this.angle+=0.087;
    
    if(this.x>670){
      this.x=670;
    } else if(this.x<70){
    this.x=70;
   }
   
    if(this.y>670){
      this.y=670;
    } else if(this.y<70){
    this.y=70;
   }
   
   }
   
    show(){
     noStroke();
     if(this.test==0){
        this.r=(floor(Math.random()*(155)+100)); 
   this.g=(floor(Math.random()*(155)+100)); 
    this.b=(floor(Math.random()*(155)+100)); 
       this.test=200;
     }
     this.test--;
     colorMode(HSB);
     this.randColor();
     fill(this.r, this.g, this.b);
     ellipse(this.x, this.y, 10, 10);
   }
   
    randColor(){
    this.r=(floor(Math.random()*(155)+100)); 
   this.g=(floor(Math.random()*(155)+100)); 
    this.b=(floor(Math.random()*(155)+100)); 
   }
   
   
}
