class Menu
{
  int menuPosX;
  int menuPosY;
  PFont pac;


  Menu()
  {
    menuPosX = 200;
    menuPosY = 90; 
    pac=loadFont("PacFont-60.vlw");
  
  }//end menu
  
  void menuback()
  {
    background(0);
    stroke(255,247,10);//make a var for the color
    strokeWeight(4);
    textFont(pac);
    text("PAC-MAN",menuPosX,menuPosY);
  }//end void menu
  
}//endclass