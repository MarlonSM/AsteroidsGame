boolean isAccelerating, isAcceleratingBackwards, isRotatingRight, isRotatingLeft, isHyperspace; 
Star s[] = new Star[200];
Spaceship ship;

public void setup() 
{
	background(0);	
	size(750,750);
	for (int i = 0; i < 200; i++) {
    	s[i] = new Star();
  	}
  	ship = new Spaceship();
}
public void draw() 
{
	background(0);
	for (int i = 0; i < 200; i++) {
    	s[i].show();
  	}
  	ship.show();
	ship.move();
	if (isAccelerating == true) ship.accelerate(0.05);
	if (isRotatingRight == true) ship.turn(3);
	if (isAcceleratingBackwards == true) ship.accelerate(-0.025);
	if (isRotatingLeft == true) ship.turn(-3);
}

public void keyPressed()
{
	if (key == 'w') isAccelerating = true;
	if (key == 'd') isRotatingRight = true;
	if (key == 's') isAcceleratingBackwards = true;
	if (key == 'a') isRotatingLeft = true;
	if (key == 'h')
	{
		ship.setX((int)(Math.random()*width));
		ship.setY((int)(Math.random()*height));
		ship.setPointDirection((int)(Math.random()*360));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
	}
}

public void keyReleased()
{
	if (key == 'w') isAccelerating = false;
	if (key == 'd') isRotatingRight = false;
	if (key == 's') isAcceleratingBackwards = false;
	if (key == 'a') isRotatingLeft = false;
}
