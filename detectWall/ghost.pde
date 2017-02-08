PImage red;
PImage blue;
PImage orange;

class Ghost {
  float xR, yR;
  float xB, yB;
  float xO, yO;
  Ghost(int xR, int yR) {
    this.xR = xR+100;
    this.yR = yR+160;
    
    this.xB = xB+40;
    this.yB = yB+70;
    
    this.xO = xO+80;
    this.yO = yO+140;
    
    red =loadImage("red.gif");
    blue =loadImage("blue.gif");
    orange =loadImage("orange.gif");
  }
  void displayGhostRed() {
    
    noStroke();
    fill(255, 204, 102);
    image(red,xR,yR);
    xR=xR+10;
    yR=110;
    if(xR>width-200)
    {
      xR=xR-300;
      
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