class Menu
{
  int menuPosX;
  int menuPosY;
  PFont pac;
  PFont arcade;
  PImage pacpic;


  Menu()
  {
    menuPosX = 90;
    menuPosY = 100; 
    pac=loadFont("PacFont-48.vlw");
    
  
  }//end menu
  
  void menuback()
  {
    background(0);
    fill(255,247,10);//make a var for the color
    strokeWeight(4);
    textFont(pac);
    text("PLAQUE-MAN",menuPosX,menuPosY);
     if(keyPressed)
    {
      if(key == ENTER)
      {
           mode=1;
      }
    
   
    }//end if keypressed
    println(key);
    
  }//end void menu
  
}//endclass