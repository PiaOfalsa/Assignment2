PImage red;

class GhostR {
  float xR, yR;
  int margin;
  float speed;
  

  GhostR(int xR, int yR) {
    this.xR = xR+150;
    this.yR = yR+70;
    
    speed=10;
    
    margin=200;
    

    red =loadImage("red.gif");
  }
  void displayGhostRed() {

    noStroke();
    fill(255, 204, 102);
    image(red, xR, yR);
    xR=xR+speed;
    
    if(xR>width-margin)
    {
      speed=-20;
      
    }
     if(xR<160)
    {
      speed=20;
      
    }
    
   
    
   
   
  
}



}