class Asteroid extends Floater {
  private double rotationSpeed; // Speed of rotation for each asteroid

  // Constructor to initialize variables
 public Asteroid() {
   super();

corners = 10;
    xCorners = new int[] {3*14, 3*10, 3*6, 3*4, 3*-10, 3*-12, 3*-6, 3*-4, 3*0, 3*6};
    yCorners = new int[] {3*0, 3*10, 3*10, 3*14, 3*10, 3*0, 3*-6, 3*-10, 3*-10, 3*-12};
    myColor = 240;
    myCenterX = random(width);
    myCenterY = random(height);
    myXspeed = random(3) - 1.5;
    myYspeed = random(3) - 1.5;
    myPointDirection = random(360);
    rotationSpeed = random(4) - 2;

  }

  // Override the move() method to add rotation
  public void move() {
    super.move(); // Call the move method of the superclass (Floater)
turn(rotationSpeed);
  }



  // Getter for myCenterX
  public double getMyCenterX() {
    return myCenterX;
  }

  // Getter for myCenterY
 public double getMyCenterY() {
    return myCenterY;
  }
}
