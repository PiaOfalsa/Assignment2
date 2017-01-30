class Maze{
     float[] rectXs = {10, 10, 10,580,10,570,10,90,490,490,10,490,90,490,10,10,490,490,150,260,370,370,170,280}; 
      float[] rectYs = {10, 530, 10,10,380,390,150,150,150,150,380,380,330,330,330,200,200,330,230,230,230,230,250,250}; 
      float[] rectWidths = {570, 560, 10,10,10,10,90,10,90,10,90,90,10,10,90,90,90,90,70,70,20,70,30,30}; 
      float[] rectHeights = {10, 10, 150,150,150,150,10,60,10,60,10,10,60,60,10,10,10,10,70,70,70,50,30,30}; 
  
  Maze(){

   
   
  }//end maze()
  
  void showMaze(){
    
        
        for(int i = 0; i<rectXs.length; i++) {
            // check the mouse position to see if it's inside the rectangle
           
            noFill();
            strokeWeight(2);
            stroke(0,0,255);
            rect(rectXs[i], rectYs[i], rectWidths[i], rectHeights[i]);  
        }
        
  
  }

}//end class