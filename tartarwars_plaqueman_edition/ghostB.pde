class GhostB extends GhostR {


  GhostB(PImage _pic, float _x, float _y, int _margin) 
  {
    super(_pic, _x, _y, _margin);
  }
  //+170;
  //  this.yB = yB//+70;

  //blue
  void display() {

    noStroke();
    fill(255, 204, 102);
    image(blue, x, y);
     y= y + speed;

    if (y > height - margin)
    {
      x=205;
      speed= -40;
    }
    if (y < 50)
    {
      x=205;
      speed = 40;
    }
  }
}