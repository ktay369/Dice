
void setup()
{
	noLoop();
size(600, 600);
}
void draw()
{
	background(0);
for(int y = 10; y<590; y+=20){
  for(int x =10; x<590; x+=20){
Die first = new Die(x, y);
first.roll();
first.show();
  }
}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	boolean one;
boolean two;
boolean three;
boolean four;
boolean five;
boolean six;
  int myX, myY, cir;
	Die(int x, int y) //constructor
	{
		myX = x;
myY = y;
cir = 3;
//myW = w;
//rect(x, y, 20, w);
	}
	void roll()
	{
		    if ((int)(Math.random()*6)+1 < 1)
    {
      one = true;
    } 
    else if((int)(Math.random()*6)+1 < 2)
    {
      two = true;
    }
    else if((int)(Math.random()*6)+1 < 3)
    {
      three = true;
    }
    else if((int)(Math.random()*6)+1 < 4)
    {
      four = true;
    }
    else if((int)(Math.random()*6)+1 < 5)
    {
      five = true;
    }
    else 
    {
      six = true;
    }
	}
	void show()
	{
  fill(255);
		rect(myX, myY, 20, 20);
if (one == true)
    {
      ellipse(myX/2, myY/2, cir, cir);
    }
	}
}