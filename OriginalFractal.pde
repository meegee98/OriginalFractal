int grow=0;
int myColorR= (int)(Math.random()*255);
int myColorG= (int)(Math.random()*255);
int myColorB= (int)(Math.random()*255);
public void setup()
{
	background(0);
	size(500, 500);
	frameRate(10);
	//myFractal (250, 250, 300);


}
public void draw()
{
	myFractal (250, 250, 300+grow);
	//myFractal (250+grow, 250+grow, 300+grow);
	//myFractal (250-grow, 250-grow, 300+grow);
	grow++;
}
public void keyPressed()
{
	//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	
	if(key==CODED && key==UP)
	grow++;
	if(grow>300)
		grow=0;
}
public void myFractal(int x, int y, int siz)
{
	strokeWeight(1);
	//stroke(myColorR, myColorG, myColorB); //uncomment it for random colors
	noFill();
	ellipse(x, y, siz, siz);
	if(siz>10)
	{
		//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(255, 0, 0, 5);
		myFractal(x-siz/3, y, siz/2);
		//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(0, 255,0, 5);
		myFractal(x, y-siz/3, siz/2);
		//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(0, 0, 255, 5);
		myFractal(x+siz/3, y, siz/2);
		//stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		stroke(255, 255, 255, 5);
		myFractal(x, y+siz/3, siz/2);
	}
}