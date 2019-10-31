Die[] dice;
int x=0, y=0;
void setup()
{
  size(600,600);
  ellipseMode(CENTER);
  rectMode(CENTER);
  dice=new Die[9];
  
  for(int i = 0; i < 3; i++) {
   for(int j=0; j<3; j++){
    dice[i*3+j] = new Die(i*170+130, j*170+130);
    
    }
  }
  
  
    

    //noLoop();
}
void draw()
{
  background(0);
  for(Die d : dice) {
  
    d.roll();
    fill(255,255,255);
    d.show();
  }
  
    //your code here
}
void mousePressed()
{
    redraw();
   
}
class Die //models one single dice cube
{
  private int x, y, rand;
  
  
    //variable declarations here
    Die(int x, int y) //constructor
    {
      this.x=x;
      this.y=y;
       rand=(int)(Math.random()*6)+1;
      //variable initializations here
    }
    void roll()
    {
      rand=(int)(Math.random()*6)+1;
      
      //your code here
    }
    void show()
    {
      fill(255);
       rect(x, y, 150, 150, 10);
       fill(0,0,0);
       if(rand==1|| rand==3|| rand==5){//center dot
         ellipse(130, 130, 20, 20);
       }
       if(rand==2||rand==3|| rand==4|| rand==5|| rand==6){//top right and bottom left dot
         ellipse(180, 85, 20, 20);//top right
        ellipse( 85, 180, 20, 20);//top left
       }
       if (rand==4|| rand==5|| rand==6){//top left and bottom right dot
         ellipse(85, 85, 20, 20);//top left
         ellipse(180, 180, 20, 20);//bottom right
       }
       if(rand==6){
         ellipse(85, 132, 20 ,20);//middle left
         ellipse(180, 132, 20, 20);//middle right
       }
      
        //your code here
    }
}
