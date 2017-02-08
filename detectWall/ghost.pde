PImage red;

class Ghost {
  float x, y;
  Ghost(int x, int y) {
    this.x = x+50;
    this.y = y;
    red =loadImage("red.gif");
  }
  void displayGhost() {
    
    noStroke();
    fill(255, 204, 102);
    image(red,x,y);
    x=x+random(10,50);
   
  }
}