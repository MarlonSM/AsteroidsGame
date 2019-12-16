class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	{
		
		rotSpeed = 0;
		while (rotSpeed == 0){
			rotSpeed = (int)(Math.random()*7)-3;
		}
		corners = 8;
		int [] xS = {16,8,-8,-16,-16,-8,8,16};
    	int [] yS = {8,16,16,8,-8,-16,-16,-8};
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

	public void setX(int x){myCenterX = x;}

	public int getX(){return (int)myCenterX;}

	public void setY(int y){myCenterY = y;}

	public int getY(){return (int)myCenterY;}

	public void setDirectionX(double x){myDirectionX = x;}

	public double getDirectionX(){return myDirectionX;}

	public void setDirectionY(double y){myDirectionY = y;}

	public double getDirectionY(){return myDirectionY;}

	public void setPointDirection(int degrees){myPointDirection = degrees;}

	public double getPointDirection(){return myPointDirection;}
}