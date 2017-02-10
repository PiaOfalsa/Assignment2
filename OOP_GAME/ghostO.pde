PImage orange;

class GhostO {


  float xO, yO;

  GhostO(int xO, int yO) 
  {
    this.xO = xO+170;
    this.yO = yO+70;
    orange =loadImage("orange.gif");
  }


  //ORANGE
  void displayGhostOrange() {

    noStroke();
    fill(255, 204, 102);
    image(orange, 250, yO);
    xO=xO-100;
    yO=200;
    if (yO>height+200)
    {
      yO=yO-200;
    }
  }
}