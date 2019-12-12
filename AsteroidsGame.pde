boolean isAccelerating, isAcceleratingBackwards, isRotatingRight, isRotatingLeft, isHyperspace; 
Spaceship ship;
Star s[] = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet>  bullets = new ArrayList <Bullet>();
public void setup() 
{
	size(750,750);
	ship = new Spaceship();
	for (int i = 0; i < 200; i++) {
    	s[i] = new Star();
  	}
  	
  	for (int i = 0; i < 20; i++){
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
	for (Bullet temp : bullets){
		temp.show();
		temp.move();
	}
  	if (isAccelerating == true) ship.accelerate(0.04);
	if (isRotatingRight == true) ship.turn(3);
	if (isAcceleratingBackwards == true) ship.accelerate(-0.020);
	if (isRotatingLeft == true) ship.turn(-3);
	ship.show();
	ship.move();
	for (int i = 0; i < asteroids.size(); i++){
  		asteroids.get(i).show();
  		asteroids.get(i).move();
  	}
  	if (asteroids.size() <= 10){
  		Asteroid a = new Asteroid();
  		asteroids.add(a);
  	}
  	for (int v = 0; v < bullets.size(); v++){
  		for (int i = 0; i < asteroids.size(); i++){
  			if (17> dist(bullets.get(v).getX(), bullets.get(v).getY(), asteroids.get(i).getX(), asteroids.get(i).getY())){
  				asteroids.remove(i);
  				bullets.remove(v);
  				break;
  			}
  		}
  	}
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
	if (key == 32)
	{
		Bullet b = new Bullet(ship);
		bullets.add(b);
	}
}

public void keyReleased()
{
	if (key == 'w') isAccelerating = false;
	if (key == 'd') isRotatingRight = false;
	if (key == 's') isAcceleratingBackwards = false;
	if (key == 'a') isRotatingLeft = false;
}


