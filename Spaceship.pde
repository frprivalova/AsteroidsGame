class Spaceship extends Floater
{   
	
	public Spaceship(){
		myColor = color(255,50,200);
		myCenterX = 150;
		myCenterY = 150;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
		corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -18;
		yCorners[0] = -10;
		xCorners[1] = -18;
		yCorners[1] = 7;
		xCorners[2] = -9;
		xCorners[2] = 7;
		

		
	}
	public void hyperspace(){
		myDirectionX = 0;
		myDirectionY = 0;
		myCenterX = (int)(Math.random()*300);
		myCenterY = (int)(Math.random()*300);
		myPointDirection = (int)(Math.random()*359);
	}
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public double getDirectionX(){
		return myDirectionX;
	}
	public double getDirectionY(){
		return myDirectionY;
	}
	public double getMyPointDirection(){
		return myPointDirection;
	}
	public double getMyCenterX(){
		return myCenterX;
	}
	public double getMyCenterY(){
		return myCenterY;
	}
}
