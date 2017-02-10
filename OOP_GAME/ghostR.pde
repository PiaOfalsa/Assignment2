PImage red;

class GhostR {
  float xR, yR;
  float speed;
  float gravity;
  
  GhostR(int xR, int yR) {
    this.xR = xR+140;
    this.yR = yR+70;
    
    speed = 5;
    gravity = 0.10;
 
    red =loadImage("red.gif");
    
  }
  void displayGhostRed() {
    
    noStroke();
    fill(255, 204, 102);
    image(red,xR,yR);
  // Add gravity to speed
    speed = speed + gravity;
    // Add speed to y location
    xR = xR + speed;
    // If square reaches the bottom
    // Reverse speed
    if (xR > width) {
      // Dampening
      speed = speed * -0.28;
      xR=width;
    }
  }
  
 
    
}