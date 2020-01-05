void AirplaneMap(PImage img, int width, int height){
  image(img, 0, 0);
  
  if(small_plane){
    
    for(int i = 1; i < 7; i++) {
      for(int j = 1; j <= 4; j++){
        //add here if condition!! If seat is filled, fill (red) if not, silver/gold
        
        fill(0, 255, 0);
        if(i < 4){
          if(j == 1){
            if(mousePressed && mouseX >= i * width/10 && mouseX <= i * width/10 + height/10 && mouseY >= height/(4) - 20 && mouseY <= height/(4) - 20 + height/10) 
              fill(0);
            rect(i * width/10, height/(4) - 20, height/10, height/10);
          }
          fill(0, 255, 0);
          if(j == 2){
            if(mousePressed && mouseX >= i * width/10 && mouseX <= i * width/10 + height/10 && mouseY >= height/8 - 20 +height/4 && mouseY <= height/8 - 20 +height/4 + height/10) 
              fill(0);
            rect(i * width/10, height/8 - 20 +height/4, height/10, height/10);
          }
          if(j == 3){
            if(mousePressed && mouseX >= i * width/10 && mouseX <= i * width/10 + height/10 && mouseY >= height - (height/4 + height/10) && mouseY <= height - (height/4 + height/10) + height/10) 
              fill(0);
            rect(i * width/10, height - (height/4 + height/10), height/10, height/10);
          }
          if(j == 4){
            if(mousePressed && mouseX >= i * width/10 && mouseX <= i * width/10 + height/10 && mouseY >= height - (height/4 + height/10 + height/8) && mouseY <= height - (height/4 + height/10 + height/8) + height/10) 
              fill(0);
            rect(i * width/10, height - (height/4 + height/10 + height/8), height/10, height/10);
          }
        }else{
          if(j == 1)
            rect(width/5 + i * width/10, height/(4) - 20, height/10, height/10);
          if(j == 2)
            rect(width/5 + i * width/10, height/8 - 20 +height/4, height/10, height/10);
          if(j == 3)
            rect(width/5 + i * width/10, height - (height/4 + height/10), height/10, height/10);
          if(j == 4)
            rect(width/5 + i * width/10, height - (height/4 + height/10 + height/8), height/10, height/10);
        }
           
      }
      
      
        
    }

  

  } else{
    for(int i = 1; i < 9; i++) {
      
      if(i < 3){
        fill(212, 175, 55);
        for(int j = 1; j <= 4; j++){
          //add here if condition!! If seat is filled, fill (red) if not, silver/gold
          
          if(j == 1)
            rect(i * width/10, height/(4) - 20, height/10, height/10);
          if(j == 2)
            rect(i * width/10, height/8 - 20 +height/4, height/10, height/10);
          if(j == 3)
            rect(i * width/10, height - (height/4 + height/10), height/10, height/10);
          if(j == 4)
            rect(i * width/10, height - (height/4 + height/10 + height/8), height/10, height/10);
       }
          
    } else {
        fill(0, 255, 0);
        for(int j = 1; j < 7; j++){
          //add here if condition!! If seat is filled, fill (red) if not, silver/gold
          
          if(j == 1)
            rect(i * width/10, height/(4) - 20, height/15, height/15);
          if(j == 2)
            rect(i * width/10, height/8 - 18 +height/5, height/15, height/15);
          if(j == 3)
            rect(i * width/10, height/8 - 10 +height/5 + (j-2) * height/15, height/15, height/15);
          if(j == 4)
            rect(i * width/10, height/8 +height/5 + (j-2) * (height/15+10) + 30, height/15, height/15);
          if(j == 5)
            rect(i * width/10, height/8 +height/5 + (j-2) * (height/15+10) + 30, height/15, height/15);
          if(j == 6)
            rect(i * width/10, height/8 +height/5 + (j-2) * (height/15+10) + 30, height/15, height/15);
        }
      }
    }
  }
  
}
