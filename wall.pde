class wall {
 
  float x;
  float y;
  float w;
  float h;
  PFont arcade;
 
  wall(float _x, float _y, float _w, float _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    
    arcade=loadFont("CosmicAlien-48.vlw");
  }
 
  void draw(){
    noFill();
    strokeWeight(1);
    stroke(0,0,255);
    rect(x,y,w,h);
    
    fill(255,247,10);//make a var for the color
    textSize(10);
    strokeWeight(1);
    textFont(arcade);
    text("Score:",50,580);
  }
 
}