class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		
		rotSpeed = 0;
		while (rotSpeed == 0){
			rotSpeed = (int)(Math.random()*7)-3;
		}
		corners = 4;
		int [] xS = {8,8,-8,-8};
		int [] yS = {8,-8,-8,8};
		xCorners = xS;
		yCorners = yS;
		myColor = color(150,150,150);
		myCenterX = (int)(Math.random()*width);
		myCenterY = (int)(Math.random()*height);
		myDirectionX = 0;
		while (myDirectionX == 0){
			myDirectionX = myDirectionY = (int)(Math.random()*11)-5;
		}
    	myPointDirection = 0;
	}

	public void move()
	{
		turn(rotSpeed);
		super.move();
	}
}