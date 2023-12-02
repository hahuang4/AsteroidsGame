class Asteroid extends Floater {
  private float rotationSpeed; // Speed of rotation for each asteroid

  // Constructor to initialize variables
 public Asteroid() {
   super();

corners = 6;
xCorners = new int[corners];
yCorners = new int[corners];
xCorners[0] = -11;
yCorners [0] = -8;
xCorners [1] = 7;
yCorners [1] = -8;
xCorners [2] = 13;
yCorners [2] = 0;
xCorners[3] = 6;
yCorners [3] = 10;
xCorners [4] = -11;
yCorners [4] = 8;
xCorners [5] = -5;
yCorners [5] = 0;
myColor = color(255);
  rotationSpeed = random(-2, 2); // Random rotation speed
myCenterX = random(width);
    myCenterY = random(height);

  }

  // Override the move() method to add rotation
  public void move() {
    super.move(); // Call the move method of the superclass (Floater)
turn(rotationSpeed);
  }



  // Getter for myCenterX
  public float getMyCenterX() {
    return myCenterX;
  }

  // Getter for myCenterY
 public float getMyCenterY() {
    return myCenterY;
  }
}
