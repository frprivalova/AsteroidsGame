//your variable declarations here
Spaceship bob;
Star [] max = new Star [400];
public void setup() 
{
  size(300,300);
  bob = new Spaceship();
  for(int i = 0; i<max.length; i++){
  	max[i]= new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0;i< max.length; i++){
  	max[i].show();
  }
  bob.show();
  bob.move();

}
public void keyPressed(){
	if(key == 'w')
		bob.accelerate(0.5);
	if(key == 'd')
		bob.turn(5);
	if(key == 'a')
		bob.turn(-5);
	if(key == 's')
		bob.accelerate(-0.5);
	if(key == 'r')
		bob.hyperspace();
} 
