void draw_times(Date [] available_times, int o)
{
  int x = 100;
  int y = 100;
  int counter = 0;
  for(int i = 0; available_times[i] != null; i++)
  {
    if( o == 1 && y < mouseX && mouseX < y + 100 &&  x < mouseY && mouseY < x + 100)
    {
      cust1.flying.date = available_times[i];
    }
    
    fill(255);
    rect(y,x,100,100);
    fill(0);
    SimpleDateFormat format = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
    String DateToStr = format.format(available_times[i]);
    text(DateToStr,y,x+50);
    
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
