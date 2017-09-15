void setup()
{
  size(400,400);
}
void draw()
{
  for(int y = 10; y<400; y = y+10)
  
    for(int x = 10; x<400; x = x+40)
    {
      Brick bob = new Brick(x,y,50);
      bob.show();;
    }
  }

class Brick
{
  int myX, myY, myWidth;
  Brick(int x, int y, int w)
  {
    myX = x;
    myY = y;
    rect(x, y, 25, 5);
  }
  void show()
  {
    noStroke();
    fill(255,0,0);
    rect(myX,myY,myWidth,10);
  }
}