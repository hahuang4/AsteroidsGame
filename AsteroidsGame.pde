ArrayList<Asteroids> asteroids = new ArrayList<Asteroids>();
public void setup() {
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


public void draw() {
  background(0);
  mySpaceship.show();
  mySpaceship.move();

  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
for (Asteroid asteroid : asteroids) {
    asteroid.show();
    asteroid.move();
  }
}

public void keyPressed() {
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
