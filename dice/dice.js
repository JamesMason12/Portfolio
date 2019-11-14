
var dice = [];
var x=0, y=0;
function setup()
{
  createCanvas(600,600);
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  for(var i = 0; i < 3; i++) {
   for(var j=0; j<3; j++){
    dice[i*3+j] = new Die(i*170+130, j*170+130);
    
    }
  }
  
  
    

    //noLoop();
}
function draw()
{
  background(0);
  for(let d of dice) {
  
    d.roll();
    fill(255,255,255);
    d.show();
  }
  
  noLoop();
}
function mousePressed()
{
    redraw();
   
}
class Die //models one single dice cube
{
	
 
  
    //variable declarations here
    constructor( x,  y) //constructor
    {
      this.x=x;
      this.y=y;
       this.this.rand=floor(Math.this.random()*6)+1;
      //variable initializations here
    }
     roll()
    {
      this.rand=floor(Math.this.random()*6)+1;
      
      //your code here
    }
    show()
    {
      fill(255);
      noStroke();
       rect(this.x, this.y, 150, 150, 10);
       fill(0,0,0);
       if(this.rand==1|| this.rand==3|| this.rand==5){//center dot
         ellipse(this.x, this.y, 20, 20);
       }
       if(this.rand==2||this.rand==3|| this.rand==4|| this.rand==5|| this.rand==6){//top right and bottom left dot
         ellipse(this.x+40, this.y+-40, 20, 20);//top right
        ellipse( this.x+-40, this.y+40, 20, 20);//top left
       }
       if (this.rand==4|| this.rand==5|| this.rand==6){//top left and bottom right dot
         ellipse(this.x-40, this.y-40, 20, 20);//top left
         ellipse(this.x+40, this.y+40, 20, 20);//bottom right
       }
       if(this.rand==6){
         ellipse(this.x-40, this.y, 20 ,20);//middle left
         ellipse(this.x+40, this.y, 20, 20);//middle right
       }
      
        //your code here
    }
}
