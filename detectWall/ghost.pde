PImage red;
PImage blue;
PImage orange;

class Ghost {
  float x, y;
  Ghost(int x, int y) {
    this.x = x+40;
    this.y = y;
    red =loadImage("red.gif");
    blue =loadImage("blue.gif");
    orange =loadImage("orange.gif");
  }
  void displayGhostRed() {
    
    noStroke();
    fill(255, 204, 102);
    image(red,x,y);
    x=x+20;
    y=random(40,70);
    if(x>width-100)
    {
      x=x-450;
      
    }
   
  }
  
  //blue
    void displayGhostBlue() {
    
    noStroke();
    fill(255, 204, 102);
    image(blue,250,y);
    y=y-40;
    y=random(40);
    if(y>height)
    {
      y=y-450;
      
    }
   
  }
  
    //blue
    void displayGhostOrange() {
    
    noStroke();
    fill(255, 204, 102);
    image(orange,250,y);
    x=x-40;
    y=random(40);
    if(x>height)
    {
      x=x-450;
      
    }
   
  }
}