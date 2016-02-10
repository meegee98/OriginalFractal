public void setup()
{
	size(500, 500);

}
public void draw()
{
	//background(0);
	myFractal (250, 250, 200);
}
public void myFractal(int x, int y, int siz)
{
	strokeWeight(1);
	stroke((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
	noFill();
	ellipse(x, y, siz, siz);
	if(siz>10)
	{
		myFractal(x-siz/6, y, siz/2);
	}

}