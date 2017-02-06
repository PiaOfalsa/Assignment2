class Food {
  int x, y;
  Food(int x, int y) {
    this.x = x+50;
    this.y = y;
  }
  void display() {
    noStroke();
    fill(255);
    ellipse(x, y, 5, 5);
  }
}