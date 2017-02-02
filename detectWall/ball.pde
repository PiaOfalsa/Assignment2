class ball {
  int radius;
  int direction;
  int direction2;
 
  float x;
  float y;
 
  ball(float _x, float _y){
    x = _x;
    y = _y;
    radius = 20;
    direction = 1;
    direction2 = 0;
     
    /*x = 20;
    y = 250;
    */
  }
 
  void draw(){
   
   /* noFill();
    strokeWeight(3);
    stroke(0,0,255);
    ellipse(x,y,25,25);
    */
   
    
    fill (255, 255, 0);
  smooth ();
  noStroke();
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -1) { 
        rotate(PI);
      }
      if ( direction2 == 1) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -1) { 
        rotate( PI + HALF_PI );
      }
      arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      // mouth movement //
    }
  }
  }
 
  void move(wall[] walls){
 
    float possibleX = x;
    float possibleY = y;
 
    if (keyPressed==true) {
 
      println(key);
 
      if (key=='a') { 
        possibleX= possibleX - 1;
        direction = -1;
      direction2 = 0;
         
      } 
      if (key=='d') { 
        possibleX = possibleX + 1;
        direction = 1;
      direction2 = 0;
        
      } 
      if (key=='w') { 
        possibleY = possibleY - 1;
        direction = 0;
      direction2 = -1;
      } 
      if (key=='s') { 
        possibleY = possibleY + 1;
        direction = 0;
      direction2 = 1;
         
      }
    }
 
    boolean didCollide = false;
    for(int i = 0; i < walls.length; i++){
      if(possibleX > walls[i].x && possibleX< (walls[i].x + walls[i].w) && possibleY > walls[i].y && possibleY < walls[i].y + walls[i].h){
        didCollide = true;
  
      }
      
    }
 
    if(didCollide == false){
      x = possibleX;
      y = possibleY;
    }
 
  }
  

   
 
}
 