class Food_yum {
  int x, y;
  Food_yum(int x, int y) {
    this.x = x+50;
    this.y = y;
  }
  void display() {
    noStroke();
    fill(random(120, 255), random(120, 255), 0);
    ellipse(x, y, 10, 10);
  }
}