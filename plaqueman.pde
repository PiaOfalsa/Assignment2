/*class Plaqueman
{
  PImage pacpic;
  int radius, directionX, directionY;
  float x, y, speed;
  Plaqueman()
  {
    pacpic=loadImage("pac.png");
    radius = 10;
    directionX = 1;
    directionY = 0;
    x = 20;
    y = 20;
    speed = 0.5;
    //plaquemanX = 250;
    //plaquemanY = 250;
    //speed = 5;
  }//end plaqueman


  void display() {
    
    x=x+speed*directionX;
    y=y+speed*directionY; 
    // check boundaries
    if ((x>width-radius) || (x<radius))
    {   
      directionX=-directionX;
    }
    if ((y>height-radius) || (y<radius))
    {   
      directionY=-directionY;
    } 
    // draw
    noFill();
   
    //fill (color(222, 22, 22)); 
    ellipse (x, y, radius, radius);    // body
    //fill (color(22, 82, 22)); 
    ellipse (x-4, y-4, 2, 2);  // the eye
    //image(pacpic, directionX, directionY);
  }

  void update()
  {
    if (keyPressed) {
      if (key == CODED)
      {
        if (keyCode == LEFT)
        {
          //if (directionX>0) { 
          directionX=-1;
          directionY=0;
          //}
        } else if (keyCode == RIGHT)
        {
          //if (directionX<0) {  
          directionX=1;
          directionY=0;
          //}
        } else if (keyCode == UP)
        {
          //if (directionY<0) {
          directionY=-1;
          directionX=0;
          //}
        } else if (keyCode == DOWN)
        {
          //if (directionY<0) { 
          directionY=1;
          directionX=0;
          //}
        }
      }
    }
  }
}//endclass

*/

class Plaqueman
{
  int radius;
  int direction;
  int direction2;
   
  float x;
  float y;
  
  Plaqueman()
  {
    
    radius = 20;
    direction = 1;
    direction2 = 0;
     
    x = 250;
    y = 250;
  
  }
  
  void update()
  {
      if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 1;
      direction = -1;
      direction2 = 0;
    }
    else if (keyCode == RIGHT) {  
      x = x + 1;
      direction = 1;
      direction2 = 0;
    }
    else if (keyCode == UP) {
      y = y - 1;
      direction = 0;
      direction2 = -1;
    }
    else if (keyCode == DOWN) { 
      y = y + 1;
      direction = 0;
      direction2 = 1;
    }
  }
  
  }
  
  void render() {
    fill (255, 255, 0);
  smooth ();
  noStroke();
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -1) { 
        rotate(PI);
      }
      if ( direction2 == 1) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -1) { 
        rotate( PI + HALF_PI );
      }
      arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      // mouth movement //
    }
  }
}

  
  
}