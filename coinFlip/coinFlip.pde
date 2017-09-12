void setup()
{
  size(500, 300);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  int numHeads = 0;
  for (int x = 50; x<500; x = x +60) {
    Coin bob = new Coin(x, 150);
    bob.show();
    if (bob.heads == true)
    {
      numHeads++;
    }
  }
  text(numHeads + " coins are heads-up.", 150, 250);
}
class Coin
{
  //three member variables
  boolean heads; 
  int myX, myY;


  //three member functions
  Coin(int x, int y) //constructor
  {
    flip();
    myX = x;
    myY = y;
  }
  void flip()
  {
    if (Math.random() < .5)
    {
      heads = true;
    } else
    {
      heads = false;
    }
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(myX, myY, 50, 50);
    fill(0);
    if (heads == true)
    {
      text("heads", myX, myY);
    } else
    {
      text("tails", myX, myY);
    }
  }
} 