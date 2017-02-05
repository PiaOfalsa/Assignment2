class Food {
  int x, y;
  Food(int x, int y) {
    this.x = x+50;
    this.y = y;
  }
  void display() {
    noStroke();
    fill(#FCA900);
    ellipse(x, y, 10, 10);
  }
}