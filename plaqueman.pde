class Plaqueman
{
  PImage pacpic;
  float plaquemanX;
  float plaquemanY;
  
  float speed;
  
  boolean upPressed;
  boolean downPressed;
  boolean leftPressed;
  boolean rightPressed;
  
  Plaqueman()
  {
    pacpic=loadImage("pac.png");
    
    float plaquemanX = 250;
    float plaquemanY = 250;
    
    float speed = 5;
    
    boolean upPressed = false;
    boolean downPressed = false;
    boolean leftPressed = false;
    boolean rightPressed = false;
  
  }//end plaqueman
  
  void moveMan()
  {
     if (upPressed) {
    plaquemanY -= speed;
  }
  if (downPressed) {
    plaquemanY += speed;
  }
  if (leftPressed) {
    plaquemanX -= speed;
  }
  if (rightPressed) {
    plaquemanX += speed;
  }

  background(0);
  image(pacpic, plaquemanX, plaquemanY);
  //ellipse(plaquemanX, plaquemanY, 25, 25); 
  
  }
  
  void keyPressed(KeyEvent e) {
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = true;
    }
    else if (keyCode == DOWN) {
      downPressed = true;
    }
    else if (keyCode == LEFT) {
      leftPressed = true;
    }
    else if (keyCode == RIGHT) {
      rightPressed = true;
    }
  }
}

void keyReleased(KeyEvent e) {
  if (key == CODED) {
    if (keyCode == UP) {
      upPressed = false;
    }
    else if (keyCode == DOWN) {
      downPressed = false;
    }
    else if (keyCode == LEFT) {
      leftPressed = false;
    }
    else if (keyCode == RIGHT) {
      rightPressed = false;
    }
  }
}


}//endclass