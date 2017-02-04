class plaqueman {
  int radius;
  int direction;
  int direction2;
 
  float x;
  float y;
 
  plaqueman(float _x, float _y){
    x = _x;
    y = _y;
    radius = 20;
    direction = 5;
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
      if ( direction == -2) { 
        rotate(PI);
      }
      if ( direction2 == 2) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -2) { 
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
        possibleX= possibleX - 2;
        direction = -2;
      direction2 = 0;
         
      } 
      if (key=='d') { 
        possibleX = possibleX + 2;
        direction = 2;
      direction2 = 0;
        
      } 
      if (key=='w') { 
        possibleY = possibleY - 2;
        direction = 0;
      direction2 = -2;
      } 
      if (key=='s') { 
        possibleY = possibleY + 2;
        direction = 0;
      direction2 = 2;
         
      }
    }
 
    boolean didCollide = false;
    for(int i = 0; i < walls.length; i++){
      if(possibleX + 15 > walls[i].x && possibleX + 15< (walls[i].x+15 + walls[i].w+15) && possibleY +30> walls[i].y+15 && possibleY+30 + 15< walls[i].y+30 + walls[i].h+30){
        didCollide = true;
  
      }
      
    }
   
    if(didCollide == false && x<width)
    {
      x = possibleX;
      y = possibleY;
      
     }
     
  strokeWeight(5); 
  stroke(255); // white 
  for (int i =0; i <= width; i+=100) {
    if (i > x-50) 
    point(i+55, height/2+40);
  } 
   
 
  }
  
  


}
 