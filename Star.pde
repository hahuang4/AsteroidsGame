class Star {
  private float x, y;

  Star() {
    x = random(width);
    y = random(height);
  }

  void show() {
    fill(255);
    noStroke();
    ellipse(x, y, 3, 3);
  }
}
