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
  size(600,600);
  menu1 = new Menu();
  pman= new Plaqueman();
  mazes= new Maze();
  

  menu1.menuback();

  

}

void draw()
{ background(0); 
  pman.display();
  pman.update();
  mazes.showMaze();
  
  
  
  
  
  
}