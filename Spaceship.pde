class Spaceship extends Floater {
 public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myCenterX = random(width);
    myCenterY = random(height);
    myPointDirection = random(360);
    myXspeed = 0;
    myYspeed = 0;
  }
public double getMyCenterX() {
    return myCenterX;
  }

  // Getter for myCenterY
 public double getMyCenterY() {
    return myCenterY;
  }
}
