/*
    Assignment 2
    OOP
    C15734155
    
    //maybe implement like a case statement if 
    //you are to do the button things
    
*/

Menu menu1;
Plaqueman pman;
Maze mazes;

void setup()
{
  size(570,580);
  menu1 = new Menu();
  pman= new Plaqueman();
  mazes= new Maze();
  

  menu1.menuback();
mazes.showMaze();
pman.display();
  

}

void draw()
{pman.update();
 
  
  
  
  
  
}