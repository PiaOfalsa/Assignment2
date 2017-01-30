class Maze{
     float[] rectXs = {0, 0, 0,540,0,540,0,90,460,460,0,460,90,460,0,0,460,460}; 
      float[] rectYs = {0, 530, 10,10,380,380,150,150,150,150,380,380,330,330,330,200,200,330}; 
      float[] rectWidths = {550, 550, 10,10,10,10,90,10,90,10,90,90,10,10,90,90,90,90}; 
      float[] rectHeights = {10, 10, 150,150,150,150,10,60,10,60,10,10,60,60,10,10,10,10}; 
  
  Maze(){

   
   
  }//end maze()
  
  void showMaze(){
    
        
        for(int i = 0; i<rectXs.length; i++) {
            // check the mouse position to see if it's inside the rectangle
           
            noFill();
            stroke(0,0,255);
            rect(rectXs[i], rectYs[i], rectWidths[i], rectHeights[i]);  
        }
        
  
  }

}//end class