// Oliver Noss AP Computer Science Block 4 Lightning
int x1,y1,x2,y2;
boolean instant=true;
void setup()
{	
	frameRate(10);
	background(0);
	stroke(255);
 	size(300,300);
}
void draw()
{	

	stroke(255);
	if (mousePressed)
	{
		x1=mouseX;
		y1=mouseY;
	}
	if (keyPressed)
	{
		if (key=='r')
		{
			background(0);
		}
		if (key=='i' && instant==false)
		{
			frameRate(10);
			instant=true;

		}
		if (key=='o' && instant==true)
		{
			frameRate(60);
			instant=false;
			strokeWeight((int)(Math.random()*2+1));
			background(0);
		}
	}
	if (!instant && y1<=300)
	{
		cursor(ARROW);
		x2=x1+(int)(Math.random()*10-5);
		y2=y1+(int)(Math.random()*7-2);
		line(x1,y1,x2,y2);
		x1=x2;
		y1=y2;
	//end at y=300
	}
	if (instant)  
	{
		
		strokeWeight(1);
		background(0);
		
		strokeWeight((int)(Math.random()*2+1));
		while (y1<=300)
		{
			stroke(255);
			x2=x1+(int)(Math.random()*10-5);
			y2=y1+(int)(Math.random()*7-2);
			line(x1,y1,x2,y2);
			x1=x2;
			y1=y2;
		}
		cloud();
	}	

}
void cloud()
{
	noCursor();
	
	stroke(100);
	fill(100);
	ellipse(mouseX, mouseY+1,40,50);
	ellipse(mouseX-20, mouseY+10,45,30);
	ellipse(mouseX+20, mouseY+10,45,30);
	ellipse(mouseX+35, mouseY+13,35,20);
	ellipse(mouseX-35, mouseY+13,35,20);
}



 