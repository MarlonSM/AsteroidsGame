boolean isAccelerating, isAcceleratingBackwards, isRotatingRight, isRotatingLeft, isHyperspace; 
Spaceship ship;
Star s[] = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Bullet bullet;

public void setup() 
{
	size(750,750);
	ship = new Spaceship();
	bullet = new Bullet(ship);
	for (int i = 0; i < 200; i++) {
    	s[i] = new Star();
    	System.out.println(s[i].getCol());
  	}
  	
  	for (int i = 0; i < 10; i++){
  		Asteroid a = new Asteroid();
  		asteroids.add(a);
  	}
  	
  	
}
public void draw() 
{
	background(0);
	for (int i = 0; i < s.length; i++) {
    	s[i].show();
  	}
  	for (int i = 0; i < asteroids.size(); i++){
  		asteroids.get(i).show();
  		asteroids.get(i).move();
  	}
  	if (isAccelerating == true) ship.accelerate(0.04);
	if (isRotatingRight == true) ship.turn(3);
	if (isAcceleratingBackwards == true) ship.accelerate(-0.020);
	if (isRotatingLeft == true) ship.turn(-3);
	ship.show();
	ship.move();
	bullet.show();
	bullet.move();


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
