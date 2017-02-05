class plaqueman {
  int radius;
  int direction;
  int direction2;
 
  float x;
  float y;
  int score;
  
  ArrayList<Food> pFood = new ArrayList();
  plaqueman(float _x, float _y){
    x = _x;
    y = _y;
    radius = 10;
    direction = 5;
    direction2 = 0;
    score=0;
    
    //food
     ellipseMode(RADIUS);
  for (int i=0; i<300; i+=30) {
    Food P = new Food((int(50+i)),(int)(80));
    Food Q = new Food((int(80+i)),(int)(120));
    pFood.add(P);
    pFood.add(Q);
   
  }
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
  
  //food
   for (int i=0;i<pFood.size();i++) {
    Food Pn = (Food) pFood.get(i);
    Pn.display();
    if (dist(x, y, Pn.x, Pn.y)<radius) {
      pFood.remove(i);
       score++;
       println(score);
    }
  }
      textSize(50);
      strokeWeight(3);
      stroke(0);
      text(score, 50, 70);
  
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
    for(int i = 0; i < walls.length; i++)
    {
      if(possibleX + 15 > walls[i].x && possibleX + 15< (walls[i].x+15 + walls[i].w+15) && possibleY +30> walls[i].y+15 && possibleY+30 + 15< walls[i].y+30 + walls[i].h+30)
      {
        didCollide = true;
  
      }
      
    }//end for
   
    if(didCollide == false && x<width)
    {
      x = possibleX;
      y = possibleY;
      
     }//end if
     
 
  } //end method
  
  
  

}//end class
 