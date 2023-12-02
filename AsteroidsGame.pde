// AsteroidsGame.pde
ArrayList<Asteroid> asteroids;

void setup() {
  size(800, 600);
  mySpaceship = new Spaceship();
  stars = new Star[50];
  asteroids = new ArrayList<Asteroid>();

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

  for (int i = 0; i < asteroids.size(); i++) 
{
    asteroids.get(i).move();
    asteroids.get(i).show();
    if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), 
             myCenterX.getX(), myCenterY.getY()) < 40)
    {
        noLoop(); // collision!
    }
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
