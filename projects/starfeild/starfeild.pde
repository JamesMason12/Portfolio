Particle [] starray;
 void setup(){ 
   size(800,800);
   starray= new Particle[701];
   starray[0]=new JumboParticle();
   for(int j=1; j<starray.length-600; j++){
     starray[j]=new OddParticle();
   }
   for(int i=101; i<starray.length; i++){
   starray[i]=new NormalParticle();
 }
 }
 
 void draw(){
   background(0);
   for(int i=0; i<starray.length; i++){
     starray[i].show();
     starray[i].move();
     
   }
 
 }
 
 interface Particle{
   void show();
   void move();
 }
