class Bullet extends Floater{
public Bullet(Spaceship theShip){
myCenterX=mySpaceship.getMyCenterX();
myCenterY=mySpaceship.getMyCenterY();
myXspeed=myYspeed=0;
myPointDirection=theShip.getPointDirection();
accelerate(10);
}
public void show(){
ellipse((float)myCenterX,(float)myCenterY,20,20);
}
 public double getMyCenterX() {
    return myCenterX;
  }

  // Getter for myCenterY
 public double getMyCenterY() {
    return myCenterY;
  }
}
}
