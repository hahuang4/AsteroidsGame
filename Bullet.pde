class Bullet extends Floater{
public Bullet(Spaceship theShip){
myCenterX=theShip.getMyCenterX();
myCenterY=theShip.getMyCenterY();
myXspeed=myYspeed=0;
myPointDirection=theShip.getPointDirection();
accelerate(1);
}
public void show(){
ellipse((float)myCenterX,(float)myCenterY,20,20);
}
}
