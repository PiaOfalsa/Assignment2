PImage red;
PImage blue;
PImage orange;

class Ghost {
  float xR, yR;
  float xB, yB;
  float xO, yO;
  Ghost(int x, int y) {
    this.xR = xR+40;
    this.yR = yR;
    
    this.xB = xB+40;
    this.yB = yB;
    
    this.xO = xO+40;
    this.yO = yO;
    
    red =loadImage("red.gif");
    blue =loadImage("blue.gif");
    orange =loadImage("orange.gif");
  }
  void displayGhostRed() {
    
    noStroke();
    fill(255, 204, 102);
    image(red,xR,yR);
    xR=xR+20;
    yR=random(40,70);
    if(xR>width-100)
    {
      xR=xR-450;
      
    }
   
  }
  
  //blue
    void displayGhostBlue() {
    
    noStroke();
    fill(255, 204, 102);
    image(blue,250,yB);
    yB=yB-40;
    yB=random(40);
    if(yB>height)
    {
      yB=yB-450;
      
    }
   
  }
  
    //blue
    void displayGhostOrange() {
    
    noStroke();
    fill(255, 204, 102);
    image(orange,250,yO);
    xO=xO-40;
    yO=random(40);
    if(xO>height)
    {
      xO=xO-450;
      
    }
   
  }
}