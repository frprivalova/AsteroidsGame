class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  Star(){
  	myX = (int)(Math.random()*300);
  	myY = (int)(Math.random()*300);
  }
  public void show(){
  	fill(255);
  	stroke(0,0,255);
  	ellipse(myX, myY, 3,3);
  }
}
