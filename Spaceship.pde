class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;
    	int [] xS = {-8, 16, -8, -2};
    	int [] yS = {-8, 0, 8, 0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(255,255,255);
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
	}
}