class Asteroid extends Floater{
	private int rot;
	
	Asteroid(){
		myCenterX = (int)(Math.random()*300);
		myCenterY = (int)(Math.random()*300);
		myDirectionX= (int)(Math.random()*4-2);
		myDirectionY= (int)(Math.random()*4-2);
		rot = (int)(Math.random()*4-2);
		corners = 4;
		xCorners = new int [corners];
		yCorners = new int [corners];
		xCorners[0] = -10;
		yCorners[0] = -10;
		xCorners[1] =10;
		yCorners[1] =10;
		xCorners[2] = 10;
		yCorners[2] = -10;
		xCorners[3] = -10;
		yCorners[3] = 10;
		myColor = color(30);
	}
	public void move(){
		turn(rot);
		super.move();
	}
	public double getX(){
		return myCenterX;
	}
	public double getY(){
		return myCenterY;
	}
}



