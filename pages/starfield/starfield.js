var starray;//Particle
var img;
function preload(){
  img=loadImage("assets/DrR.png");
}
 function setup(){ 
   createCanvas(800,800);
   starray= [];
   starray[0]=new JumboParticle();
   for(var j=1; j<101; j++){
     starray[j]=new OddParticle();
   }
   for(var i=101; i<701; i++){
   starray[i]=new NormalParticle();
 }
 }
 
 function draw(){
   background(0);
   for(var i=0; i<starray.length; i++){
     starray[i].show();
     starray[i].move();
     
   }
 
 }
 
