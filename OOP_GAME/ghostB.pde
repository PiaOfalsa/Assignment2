PImage blue;
class GhostB {
  
  float xB, yB;

  GhostB(int xB, int yB) 
  {
    this.xB = xB+170;
    this.yB = yB+70;
    
    blue =loadImage("blue.gif");
  }
  
   //blue
    void displayGhostBlue() {
    
    noStroke();
    fill(255, 204, 102);
    image(blue,250,yB);
    yB=yB-40;
    xB=170;
    if(yB>height)
    {
      yB=yB-450;
      
    }
   
  }
  

}