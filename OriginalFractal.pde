int myColorR= (int)(Math.random()*255);
int myColorG= (int)(Math.random()*255);
int myColorB= (int)(Math.random()*255);
public void setup()
{
	background(0);
	size(500, 500);
	myFractal (250, 250, 300);


}
public void draw()
{
	//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	//myFractal (250, 250, 300);
}
public void myFractal(int x, int y, int siz)
{
	strokeWeight(1);
	stroke(myColorR, myColorG, myColorB); //uncomment it for random colors
	noFill();
	ellipse(x, y, siz, siz);
	if(siz>10)
	{
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		myFractal(x-siz/3, y, siz/2);
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		myFractal(x, y-siz/3, siz/2);
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		myFractal(x+siz/3, y, siz/2);
		stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		myFractal(x, y+siz/3, siz/2);
	}
}