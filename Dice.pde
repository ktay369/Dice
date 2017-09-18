
void setup()
{
  noLoop();
  size(600, 600);
}
void draw()
{
  background(0);
  int total = 0;
  for (int y = 10; y<590; y+=20) {
    for (int x =10; x<590; x+=20) {
      Die first = new Die();
      total += first.roll();
      first.draw(x, y);
       
    }
    
  }
     fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 1000);
    textSize(50);
    text("Total Sum: "+total, 150, 200);
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 1000);
    
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int sides=6;
  int myX, myY, myW, cir, value;
  Die() //constructor
  {

    myW = 20;
    cir=3;
  }
  int roll()
  {
    value = (int)(Math.random()*sides +1);
    return value;
  }

  void draw(int x, int y) 
  { 
    myX=x;
    myY=y;

    fill(255);
    //fill(value*10, value*20, value*30);
    rect(myX, myY, myW, myW);
    fill(0);
    if (value==1) {

      drawOne();
    } else if (value==2) {
      drawTwo();
    } else if (value==3) {
      drawThree();
    } else if (value==4) {
      drawFour();
    } else if (value==5) {
      drawFive();
    } else {
      drawSix();
    }

  }

  void drawOne() 
  {

    ellipse(myX+myW/2, myY+myW/2, cir, cir);
  }

  void drawTwo() 
  {
    ellipse(myX+myW/4, myY+myW/4, cir, cir);
    ellipse(myX+myW*3/4, myY+myW*3/4, cir, cir);
  }

  void drawThree() 
  {
    drawOne();
    drawTwo();
  }
  void drawFour()
  {
    drawTwo();
    ellipse(myX+myW/4, myY+myW*3/4, cir, cir);
    ellipse(myX+myW*3/4, myY+myW/4, cir, cir);
  }
  void drawFive()
  {
    drawOne();
    drawFour();
  }



  void drawSix()
  {
    drawFour();
    ellipse(myX+myW/4, myY+myW/2, cir, cir);
    ellipse(myX+myW*3/4, myY+myW/2, cir, cir);
  }










  /*void show()
     {
   fill(255);
       rect(myX, myY, 20, 20);
   
   
     }*/
}