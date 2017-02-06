class Food {
  int x, y;
  Food(int x, int y) {
    this.x = x+50;
    this.y = y;
  }
  void display() {
    noStroke();
    fill(255, 204, 102);
    ellipse(x, y, 4, 4);
  }
}