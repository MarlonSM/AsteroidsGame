class Star 
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*width);
  	myY = (int)(Math.random()*height);
    myColor = color(((int)(Math.random()*10)+245), ((int)(Math.random()*10)+245), ((int)(Math.random()*150)+100), ((int)(Math.random()*55)+50));
  }
  public void show()
  {
  	fill(myColor);
    noStroke();
    ellipse(myX, myY, 4, 4);
  }

  public int getCol(){return (int)myColor;}
}
