class GhostO extends GhostR {
  float speed;
  float gravity;

  GhostO(PImage _pic, float _x, float _y, int _margin) 
  {
    super(_pic, _x, _y, _margin);


    speed = 5;
    gravity = 0.10;
  }


  //ORANGE
  void display() {

    noStroke();
    fill(255, 204, 102);
    image(orange, x, y);
     y= y + speed;

    if (y > height - margin)
    {
      x=390;
      speed= -25;
    }
    if (y < 100)
    {
      x=390;
      speed = 25;
    }
  }
}