class GhostR {
  PImage pic;
  float x, y;
  float speed;
  int margin;

  GhostR(PImage _pic, float _x, float _y, int _margin) {
    pic = _pic;
    x = _x;//+150;
    y = _y;//+70;

    speed = 10;
    margin = _margin;
  }
  void display() {

    noStroke();
    fill(255, 204, 102);
    image(red, x, y);
    x = x + speed;

    if (x > width - margin)
    {
      speed= -20;
    }
    if (x < 160)
    {
      speed = 20;
    }
  }
}