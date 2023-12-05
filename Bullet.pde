class Bullet extends Floater{
public Bullet(Spaceship the ship){
myCenterX=the ship.getX();
myCenterY=the ship.get();
myPointDirection=theShip.getPointDirection();
accelerate(1);
}
public vod show(){
ellipse((float)myCenterX,(float)myCenterY,20,20);
}
}
