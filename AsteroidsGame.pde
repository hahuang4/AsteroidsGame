ArrayList<Asteroid> asteroids;
ArrayList <Bullet> shots= new ArrayList<Bullet>();
public void setup() {
  size(800, 600);
  mySpaceship = new Spaceship();
  stars = new Star[50];
  asteroids = new ArrayList<Asteroid>();

  for (int z = 0; z < stars.length; z++) {
    stars[z] = new Star();
  }

  for (int j = 0; j < 5; j++) {
    asteroids.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  mySpaceship.show();
  mySpaceship.move();

  for (int x = 0; x < stars.length; x++) {
    stars[x].show();
  }
for(int q=0;q< shots.size(); q++){
shots.get(q).move();
shots.get(q).show();
}

  for (int i = 0; i < asteroids.size(); i++) 
{
    asteroids.get(i).move();
    asteroids.get(i).show();
    if (dist(asteroids.get(i).getMyCenterX(), asteroids.get(i).getMyCenterY(), 
             mySpaceship.getMyCenterX(), mySpaceship.getMyCenterY()) < 20)
    {
       asteroids.remove(i);
    }
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
  } else if(key==' ')
shots.add(new Bullet(bob));
}
