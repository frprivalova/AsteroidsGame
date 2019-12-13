//your variable declarations here
Spaceship bob;
Star [] max = new Star [400];
ArrayList <Asteroid> arr = new ArrayList <Asteroid>();
ArrayList <Bullet> sue = new ArrayList <Bullet>();
public void setup() 
{
  size(300,300);
  bob = new Spaceship();
  

  for(int i = 0; i<max.length; i++){
  	max[i]= new Star();
  }
  for(int i = 0; i<50; i++){
  	arr.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0;i< max.length; i++){
  	max[i].show();
  }
  for(int i = 0; i<arr.size();i++){
  	arr.get(i).show();
  	arr.get(i).move();

  }
  for(int i = 0; i<sue.size();i++){
  	sue.get(i).show();
  	sue.get(i).move();
  }
  bob.show();
  bob.move();


   for(int i = sue.size()-1;i>=0;i--){
   	for(int j = arr.size()-1;j>=0;j--){
  		if(dist((float)arr.get(j).getX(),(float)arr.get(j).getY(),(float)sue.get(i).getX(),(float)sue.get(i).getY()) < 20){
 			sue.remove(i);
 			arr.remove(j);
   			break;
       }
   	}



  }
  

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
	if(key == 'q')
  		sue.add(new Bullet(bob));
  
} 
