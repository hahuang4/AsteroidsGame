ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Spaceship mySpaceship;
Star[] stars;

void setup() {
  size(800, 600);
  mySpaceship = new Spaceship();
  stars = new Star[50];

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  // Initialize asteroids
  for (int i = 0; i < 5; i++) {
    asteroids.add(new Asteroid());
  }
}

void draw() {
  background(0);
  mySpaceship.show();
  mySpaceship.move();

  // Draw and move asteroids
  for (Asteroid asteroid : asteroids) {
    asteroid.show();
    asteroid.move();

    // Check for collisions with the spaceship
    float distance = dist(mySpaceship.getMyCenterX(), mySpaceship.getMyCenterY(), asteroid.getMyCenterX(), asteroid.getMyCenterY());
    if (distance < 20) {
      // Handle collision actions if needed
      asteroids.remove(asteroid);
    }
  }

  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    mySpaceship.turn(-10);
  } else if (key == 'd' || key == 'D') {
    mySpaceship.turn(10);
  } else if (key == 'w' || key == 'W') {
    mySpaceship.accelerate(0.1);
  } else if (key == 'h' || key == 'H') {
    mySpaceship.hyperspace();
  }
}
