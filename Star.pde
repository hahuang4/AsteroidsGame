class Star {
  private float x, y;

 public Star() {
    x = random(width);
    y = random(height);
  }

public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse(x, y, 3, 3);
  }
}
