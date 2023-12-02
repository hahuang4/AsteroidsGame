ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Integer> asteroidsToRemove = new ArrayList<Integer>();

void setup() {
  size(800, 600);
  mySpaceship = new Spaceship();
  stars = new Star[50];

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  for (int i = 0; i < 5; i++) {
    asteroids.add(new Asteroid());
  }
}

void draw() {
  background(0);
  mySpaceship.show();
  mySpaceship.move();

  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }

  asteroidsToRemove.clear(); // Clear the list of asteroids to remove

  // Iterate in reverse order to avoid issues with removing elements
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    Asteroid asteroid = asteroids.get(i);
    asteroid.show();
    asteroid.move();

    float distance = dist(mySpaceship.getMyCenterX(), mySpaceship.getMyCenterY(), asteroid.getMyCenterX(), asteroid.getMyCenterY());

    if (distance < 20) {
      // Mark the asteroid for removal
      asteroidsToRemove.add(i);
    }
  }

  // Remove asteroids outside the loop to avoid ConcurrentModificationException
  for (int indexToRemove : asteroidsToRemove) {
    asteroids.remove(indexToRemove);
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    mySpaceship.turn(-10);
  } else if (key == 'd' || key == 'D') {
    mySpaceship.turn(10);
  } else if (key == 'w' || key == 'W') {
    mySpaceship.accelerate(1);
  } else if (key == 'h' || key == 'H') {
    mySpaceship.hyperspace();
  }
}
