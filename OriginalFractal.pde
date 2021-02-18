int myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
public void setup()
{
  size (300, 300);
  rectMode(CENTER);
}
public void draw()
{
  background(myColor);
  fill(myColor);
  myFractal(250, 250, 500);
}
void mouseClicked() {
  if(myColor > 0)
   myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   else
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 
}
public void myFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  if (siz > 1)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
