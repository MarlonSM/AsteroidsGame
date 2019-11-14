Spaceship ship;
public void setup() 
{
	background(0);	
	size(500,500);
	ship = new Spaceship();
}
public void draw() 
{
 ship.show();
}

public void keyPressed(){
	if (key == UP) isAccelerating = true;
	if (key == RIGHT) isRotatingRight = true;

}
