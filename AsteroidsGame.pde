//your variable declarations here
Spaceship bob;
Star [] max = new Star [400];
ArrayList <Asteroid> arr = new ArrayList <Asteroid>();
public void setup() 
{
  size(300,300);
  bob = new Spaceship();
  for(int i = 0; i<max.length; i++){
  	max[i]= new Star();
  }
  for(int i = 0; i<100; i++){
  	arr.add(new Asteroid());
  }

}
public void draw() 
{
  background(0);
  for(int i = 0;i< max.length; i++){
  	max[i].show();
  }
  for(int i = 0; i<100;i++){
  	arr.get(i).show();
  	arr.get(i).move();

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
