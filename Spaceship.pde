class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 4;
    	int [] xS = {-8, 16, -8, -2};
    	int [] yS = {-8, 0, 8, 0};
    	xCorners = xS;
    	yCorners = yS;
    	myColor = color(0,0,255);
    	myCenterX = myCenterY = 250;
    	myDirectionX = myDirectionY = 0;
    	myPointDirection = 0;
	}

	public void show()
	{
		fill(myColor);
		stroke(myColor);

		translate((float)myCenterX, (float)myCenterY);

		float dRadians = (float)(myPointDirection*(Math.PI/180));

		rotate(dRadians);

		beginShape();
	    for (int nI = 0; nI < corners; nI++)
	    {
	      vertex(xCorners[nI], yCorners[nI]);
	    }
	    endShape(CLOSE);
	    
	    rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
	}
	


}