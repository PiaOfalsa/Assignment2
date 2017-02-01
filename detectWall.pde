ball player;
wall[] walls; 
 
void setup() {
 
  size(600, 600);
 
  player = new ball(50,300);
 
  walls = new wall[10];
  walls[0] = new wall(50,10,500,10);//top
  walls[1] = new wall(50,500,500,10);//bottom end horizontal
  walls[2] = new wall(540,20,10,100);//right pillar vertical
  walls[3] = new wall(50,120,90,10);//left hor
  walls[4] = new wall(50,400,10,100);//bottom left vert
  walls[5] = new wall(540,400,10,100);//bottom right vert
  walls[6] = new wall(50,20,10,100);//left vert pillar
  walls[7] = new wall(460,120,90,10);//right horz
  walls[8] = new wall(50,390,90,10);//
  walls[9] = new wall(460,390,90,10);//
 
} 
void draw() {
 
  background(0); 
  noStroke(); 
 
  player.draw();
  player.move(walls);
 
  for(int i = 0; i < walls.length; i++){
    walls[i].draw();
  }
 
}
 
class ball {
 
  float x;
  float y;
 
  ball(float _x, float _y){
    x = _x;
    y = _y;
  }
 
  void draw(){
    noFill();
    strokeWeight(3);
    stroke(0,0,255);
    ellipse(x,y,25,25);
  }
 
  void move(wall[] walls){
 
    float possibleX = x;
    float possibleY = y;
 
    if (keyPressed==true) {
 
      println(key);
 
      if (key=='a') { 
        possibleX= possibleX - 2;
      } 
      if (key=='d') { 
        possibleX = possibleX + 2;
      } 
      if (key=='w') { 
        possibleY = possibleY - 2;
      } 
      if (key=='s') { 
        possibleY = possibleY + 2;
      }
    }
 
    boolean didCollide = false;
    for(int i = 0; i < walls.length; i++){
      if(possibleX > walls[i].x && possibleX < (walls[i].x + walls[i].w) && possibleY > walls[i].y && possibleY < walls[i].y + walls[i].h){
        didCollide = true;
  
      }
      
    }
 
    if(didCollide == false){
      x = possibleX;
      y = possibleY;
    }
 
  }
   
 
}
 
class wall {
 
  float x;
  float y;
  float w;
  float h;
 
  wall(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
 
  void draw(){
    noFill();
    strokeWeight(3);
    stroke(0,0,255);
    rect(x,y,w,h);
  }
 
}