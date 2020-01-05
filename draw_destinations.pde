void draw_destinations(String [] destinations, int o) 
{
  int x = 100;
  int y = 100;
  int counter = 0;
  for(int i = 0; destinations[i] != null; i++)
  {
    if( o == 1 && y < mouseX && mouseX < y + 100 &&  x < mouseY && mouseY < x + 100)
    {
      cust1.flying.desentation = destinations[i];
    }
    
    fill(255);
    rect(y,x,100,100);
    fill(0);
    text(destinations[i],y+50,x+50);
    
    if(y == 700)
    {
      y = 100;
    }
    else
    {
      y += 200;
    }
    
    if(counter == 3)
    {
      counter = 0;
      x += 200;
    }
    else
    {
      counter++;
    }
  }     
}
