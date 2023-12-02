class Asteroid extends Floater {
  private float rotationSpeed; // Speed of rotation for each asteroid

  // Constructor to initialize variables
 public Asteroid() {
   super();
corners = 6;
Corners = new int [corners];
Corners = new int [corners];
Corners [0] = -11;
Corners [0] = -8;
Corners [1] = 7;
Corners [1] = -8;
Corners [2] = 13;
Corners [2] = 0;
xCorners [3] = 6;
Corners [3] = 10;
Corners [4] = -11;
Corners [4] = 8;
xCorners [5] = -5;
Corners [5] = 0;
    rotationSpeed = random(-0.02, 0.02); // Random rotation speed
  }

  // Override the move() method to add rotation
  public void move() {
    super.move(); // Call the move method of the superclass (Floater)
    angle += rotationSpeed; // Rotate the asteroid
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
