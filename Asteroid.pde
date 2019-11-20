class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		rotSpeed = (int)(Math.random()*7)-3;
		corners = 3;
		int [] xS = {-8, 16, -8, -2};
		int [] yS = {-8, 0, 8, 0};
		xCorners = xS;
		yCorners = yS;
		myColor = color(204,0,0);
		myCenterX = (int)(Math.random()*width);
		myCenterY = (int)(Math.random()*height);
		myDirectionX = myDirectionY = (int)(Math.random()*11)-5;
    	myPointDirection = 0;
	}

	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}