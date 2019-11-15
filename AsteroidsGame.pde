Spaceship ship;
boolean isAccelerating = false;
boolean isRotatingRight = false;
boolean isRotatingLeft = false;

public void setup() 
{
	background(0);	
	size(500,500);
	ship = new Spaceship();
}
public void draw() 
{
 
 ship.move();
 ship.show();
 if (isAccelerating == true) ship.accelerate(0.1);
 if (isRotatingRight == true) ship.turn(1);
 if (isRotatingLeft == true) ship.turn(-1);
 
}

public void keyPressed(){
	if (key == '5') isAccelerating = true;
	if (key == 'D') isRotatingRight = true;
	if(key == 'A') isRotatingLeft = true;

}
public void keyReleased(){
	if (key == 'W') isAccelerating = false;
	if (key == 'D') isRotatingRight = false;
	if (key == 'A') isRotatingLeft = false;
}
