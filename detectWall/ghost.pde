PImage red;

class Ghost {
  float x, y;
  Ghost(int x, int y) {
    this.x = x+40;
    this.y = y;
    red =loadImage("red.gif");
  }
  void displayGhost() {
    
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
}