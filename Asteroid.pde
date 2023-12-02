class Asteroid extends Floater {
  private float rotationSpeed; // Speed of rotation for each asteroid

  // Constructor to initialize variables
 public Asteroid() {
   super();
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
