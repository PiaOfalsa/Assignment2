class Menu
{
  int menuPosX;
  int menuPosY;
  PFont pac;
  PFont pac2;
  PFont arcade;
  PImage pacpic;
  
  //rain
  float x;
  float y;
  float z;
  float len;
  float yspeed;



  Menu()
  {
    menuPosX = 50;
    menuPosY = 90; 
    pac=loadFont("PacFont-55.vlw");
    pac2=loadFont("CosmicAlien-30.vlw");
    pacpic = loadImage("pacmenu.png");
    
    x  = random(width);
    y  = random(-500, -50);
    z  = random(0, 20);
    len = map(z, 0, 20, 10, 20);
    yspeed  = map(z, 0, 20, 1, 20);
  
  }//end menu
  
  void menuback()
  {
    background(0);
    fill(255,247,10);//make a var for the color
    strokeWeight(20);
    textFont(pac);
    text("PLAQUE-MAN",menuPosX,menuPosY);
    
    noFill();
    stroke(255,247,10);//make a var for the color
    strokeWeight(4);
    textFont(pac2);
    text("PRESS ENTER",170,380);
    image(pacpic,130,150);
     if(keyPressed)
    {
      if(key == ENTER)
      {
           mode=1;
      }
    
   
    }//end if keypressed
    println(key);
    
  }//end void menu
  
  void fall() {
    y = y + yspeed;
    float grav = map(z, 0, 20, 0, 0.2);
    yspeed = yspeed + grav;

    if (y > height) {
      y = random(-200, -100);
      yspeed = map(z, 0, 20, 4, 10);
    }
  }

  void show() {
    float thick = map(z, 0, 20, 1, 3);
    strokeWeight(thick);
    stroke(0, 0, 255);
    line(x, y, x, y+len);
  }
  
}//endclass