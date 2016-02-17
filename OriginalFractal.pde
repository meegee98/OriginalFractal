int grow=0;
public void setup()
{
  background(0);
  size(700, 700);
  frameRate(25);
}
public void draw()
{
  myFractal (350, 350, 300+grow);
  grow+=2;
    if(grow>250){
      grow=0;}
}
public void myFractal(int x, int y, int siz)
{
  strokeWeight(.5);
  ellipse(x, y, siz, siz);
  if(siz>20)
  {
    fill(255, 0, 0, 5);
    myFractal(x-siz/3, y, siz/2);
    fill(0, 255,0, 5);
    myFractal(x, y-siz/3, siz/2);
    fill(0, 0, 255, 5);
    myFractal(x+siz/3, y, siz/2);
    fill(255, 255, 255, 5);
    myFractal(x, y+siz/3, siz/2);
   }
}
