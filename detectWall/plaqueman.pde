import ddf.minim.*;
  
class plaqueman {
  int radius;
  int direction;
  int direction2;
 
  float x;
  float y;
  int score;
  
  ArrayList<Food> pFood = new ArrayList();
    
  ArrayList<Food_yum> yumFood = new ArrayList();
  Minim minim1;
 
  AudioPlayer chomp;

  plaqueman(float _x, float _y){
    x = _x;
    y = _y;
    radius = 15;
    direction = 5;
    direction2 = 0;
    score=0;

    
    //food
     ellipseMode(RADIUS);
  for (int i=0; i<430; i+=45) {
    Food P = new Food((int(30+i)),(int)(40));
    Food Q = new Food((int(30+i)),(int)(90));
    Food S = new Food((int(35+i)),(int)(480));
    Food T = new Food((int(35+i)),(int)(416));
    Food U = new Food((int(35+i)),(int)(363));
    Food V = new Food((int(35+i)),(int)(160));
    pFood.add(P);
    pFood.add(Q);
    pFood.add(S);//bottom foods
    pFood.add(T);//bottom foods near oop
    pFood.add(U);
    pFood.add(V);
   
  }
  
    for (int k=0; k<4; k+=100)
    {
    
    Food_yum big1 = new Food_yum((int(30)),(int)(40));
    Food_yum big2 = new Food_yum((int(470)),(int)(40));
    Food_yum big3 = new Food_yum((int(470)),(int)(160));
    Food_yum big4 = new Food_yum((int(30)),(int)(160));
    Food_yum big5 = new Food_yum((int(30)),(int)(360));
    Food_yum big6 = new Food_yum((int(470)),(int)(360));
    Food_yum big7 = new Food_yum((int(30)),(int)(480));
    Food_yum big8 = new Food_yum((int(470)),(int)(480));
    yumFood.add(big1);
    yumFood.add(big2);
    yumFood.add(big3);
    yumFood.add(big4);//right 2nd big food
    yumFood.add(big5);//left 2nd big food
    yumFood.add(big6);//
    yumFood.add(big7);//
    yumFood.add(big8);//
   
  }
   
  minim1=new Minim(this);
  chomp = minim1.loadFile("Pac-Man Waka Waka Seamless Loop.mp3");
  
    
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

  for ( int i=-1; i < 10; i++) {
    for ( int j=-1; j < 10; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( direction == -10) { 
        rotate(PI);
      }
      if ( direction2 == 10) { 
        rotate(HALF_PI);
      }
      if ( direction2 == -10) { 
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
    
    if (dist(x, y, Pn.x, Pn.y)<radius) 
    {
      
      pFood.remove(i);
       score++;
       println(score);

       
    }
   }//end for
   
   //bonus big food pellets
     
      for (int j=0;j<yumFood.size();j++)
      {
       
        
      Food_yum Yum = (Food_yum) yumFood.get(j);
      Yum.display();
    
    if (dist(x, y, Yum.x, Yum.y)<radius)
    {
      
      yumFood.remove(j);
       score=score+5;
       println(score);
   
       
    }
    
    
  }
    
      textSize(30);
      strokeWeight(3);
      fill(255, 204, 102);
      text(score, 200, 580);
      
  
  }
 
  void move(wall[] walls){
    
 
    float possibleX = x;
    float possibleY = y;

    if (keyPressed==true) {

 
      println(key);

 
      if (key=='a') { 
        possibleX= possibleX - 10;
        direction = -10;
      direction2 = 0;

         
      } 
      if (key=='d') { 
        possibleX = possibleX + 10;
        direction = 10;
      direction2 = 0;
        
      } 
      if (key=='w') { 
        possibleY = possibleY - 10;
        direction = 0;
      direction2 = -10;
      } 
      if (key=='s') { 
        possibleY = possibleY + 10;
        direction = 0;
      direction2 = 10;
      
   
         
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
 