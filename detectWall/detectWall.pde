Menu menu;
Menu[] menus = new Menu[50];
plaqueman player;
wall[] walls; 

import ddf.minim.*;
Minim minim;
AudioPlayer hello;
AudioPlayer chomp;

int mode=0;// intro screen 1 normal play 2 game end
int INTRO=0;
int PLAY=1;
int GOVER=2;

void setup() {
 
  size(600, 600);
  menu=new Menu();
  for (int i = 0; i < menus.length; i++) {
    menus[i] = new Menu();
  }
  
   
  player = new plaqueman(20,300);
  

  minim=new Minim(this);
  hello = minim.loadFile("pacman_beginning.wav"); minim=new Minim(this);
  chomp = minim.loadFile("Pac-Man Waka Waka Seamless Loop.mp3");
  
 
} 
void draw() {
 
  background(0); 
  if(mode==INTRO)
   {
     menu.menuback();
     
     for (int i = 0; i < menus.length; i++) {
    menus[i].fall();
    menus[i].show();
    hello.play();
  }
  

   }//end if modem 
   else if(mode==PLAY)
   {
     printWall();
     noStroke(); 
     
     player.draw();
    //player.render();
    chomp.play();
    player.move(walls);
  
  
 
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  }
 
   }//end else if 1
   else if(mode==GOVER)
   {
   
   }//end else if 2
   

}
 
void printWall(){
   walls = new wall[24];
  walls[0] = new wall(50,10,500,10);//top
  walls[1] = new wall(50,500,500,10);//bottom end horizontal
  walls[2] = new wall(540,20,10,100);//right pillar vertical
  walls[3] = new wall(50,120,90,10);//left hor
  walls[4] = new wall(50,400,10,100);//bottom left vert
  walls[5] = new wall(540,400,10,100);//bottom right vert
  walls[6] = new wall(50,20,10,100);//left vert pillar
  walls[7] = new wall(460,120,90,10);//right horz
  walls[8] = new wall(60,180,140,140);//first o
  walls[9] = new wall(240,180,140,140);//2nd o
  walls[10] = new wall(422,180,20,140);//pillar p
  walls[11] = new wall(442,180,105,130);//box p
  walls[12] = new wall(50,390,90,10);//bottom left hor
  walls[13] = new wall(460,390,90,10);//bottom right hor
  walls[14] = new wall(100,60,80,10);//top left hor bar
  walls[15] = new wall(230,20,10,80);//top left vert
  walls[16] = new wall(280,60,80,10);//top 2nd hor bar
  walls[17] = new wall(400,20,10,80);//top 2nd vert
  walls[18] = new wall(460,60,40,10);//top right bar 3rd
  walls[19] = new wall(100,440,80,10);//bottom left hor
  walls[20] = new wall(230,420,10,80);//bot vert left
  walls[21] = new wall(280,440,80,10);//bot
  walls[22] = new wall(400,420,10,80);//top 2
  walls[23] = new wall(460,440,40,10);//bot right
 

}