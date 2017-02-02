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
    strokeWeight(1);
    stroke(0,0,255);
    rect(x,y,w,h);
  }
 
}