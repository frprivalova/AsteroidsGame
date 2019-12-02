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
		xCorners[0] = -6;
		yCorners[0] = -6;
		xCorners[1] = 6;
		yCorners[1] = 6;
		xCorners[2] = 6;
		yCorners[2] = -6;
		xCorners[3] = -6;
		yCorners[3] = 6;
		myColor = color(30);
	}
	public void move(){
		turn(rot);
		super.move();
	}
	
}



