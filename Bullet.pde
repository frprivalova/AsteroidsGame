class Bullet extends Floater {
double dRadians;
	public Bullet (Spaceship bob){
		myCenterX = bob.getMyCenterX();
		myCenterY = bob.getMyCenterY();
		myPointDirection = bob.getMyPointDirection();
		dRadians = (float)myPointDirection  * (Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + bob.getDirectionX();
 		myDirectionY = 5 * Math.sin(dRadians) + bob.getDirectionY();
 		accelerate(6);

	}
	public void show(){
		fill(255);
		ellipse((float)myCenterX, (float)myCenterY, 5, 5);
	}
	public void move(){
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 
	}
	public double getX(){
		return myCenterX;
	}
	public double getY(){
		return myCenterY;
	}

}