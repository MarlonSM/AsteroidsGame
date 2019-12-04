class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myCenterX = ship.getX();
		myCenterY = ship.getY();
		myPointDirection = ship.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + ship.getDirectionX();
		myDirectionY = 5 * Math.sin(dRadians) + ship.getDirectionY();
	}
	public void show()
	{
		fill(204,0,0);
		noStroke();
		ellipse((float)myCenterX,(float)myCenterY,7,7);
	}










}