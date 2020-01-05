/**********************************************************
Program written by
Jiho Kim
Garth Slaney
Nolan Chan

For Jr. Engineering competition 2019
**********************************************************/

import static javax.swing.JOptionPane.*;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;




PImage img;
int height;
int width;
boolean small_plane;
Customer cust1 = new Customer();
Plane p = new Plane();

Table available_planes;
PrintWriter output;
int n = 0;
PImage select_flight_screen;
PImage seat_map;
String [] destinations =  new String[30];
Date [] available_times = new Date [12];
TableRow [] plane = new TableRow [30];

void setup() 
{
  available_planes = loadTable("departures.csv", "header");
  
  /********************************************************
  Loads information of each available plane (e.x. plane type)
  into an array with each array element corresponding to each available plane
  *********************************************************/
  for(int i = 0; i < available_planes.getRowCount(); i++)
  {
    plane[i] = available_planes.getRow(i);
  }
  
  /********************************************************
  get all locations
  ********************************************************/
  get_unique_destinations(destinations, plane);

  /**********************************************************
  loads images in setup to make the program faster 
  **********************************************************/
  select_flight_screen = loadImage("book_flight.png");
  seat_map = loadImage("airplane.png");
  
  /**********************************************************
  makes files for transiction and output log 
  **********************************************************/
  output = createWriter("reciept");
  
  
  img = loadImage("airplane.png");
  height = displayHeight;
  width = displayWidth;
  
  small_plane = true;
  
  frameRate(60);
  fullScreen();
}


void draw() 
{
  /**********************************************************
  display start up screen 
  **********************************************************/
  if(cust1.next == 0)
  {
    image(select_flight_screen,0,0);
    draw_destinations(destinations, 0);
    
    /**********************************************************
    checks for mouse input
    **********************************************************/
    if(mousePressed == true) 
    {
      draw_destinations(destinations, 1);
      output.println(cust1.flying.desentation);
      if(cust1.flying.desentation != " ")
      {
        cust1.next++;
         
      }
    }
  }
  
  if(cust1.next == 2)
  {
    image(select_flight_screen,0,0);
    get_available_times(available_times, plane, cust1.flying.desentation);
    draw_times(available_times, 0);
    
    //checks for mouse input
    if(mousePressed == true) 
    {
      draw_times(available_times, 1);  
      cust1.next++;
    }
  }
  
  //display input area
  if(cust1.next == 1)
  { 
    while(n == 0)
    {
      cust1.name = showInputDialog("Please enter your first and last name");
      if(cust1.name == null) 
      {
        showMessageDialog(null, "Input not allowed please try again.", "alert", ERROR_MESSAGE);
      }
      else
      {
        n++;
      }
    }
  
    
    while(n == 1)
    {
      cust1.email = showInputDialog("Please enter your email adress");
      if(cust1.email == null) 
      {
        showMessageDialog(null, "Input not allowed please try again.", "alert", ERROR_MESSAGE);
      }
      else
      {
        n++;
      }
    }
    
    if(n == 2)
    {
      cust1.next++;
    }
  }
    
  
  //display seat picking options
  if(cust1.next == 3)
  {
    AirplaneMap(img, width, height);
    if(keyPressed)
    {
      cust1.next++;
    }
      
  }
  
  //display confirmation screen
  if(cust1.next == 4) 
  {
    int l = showConfirmDialog(null, "Are these your seat chocies?");
    if(l == YES_OPTION)
    {
      exit();
    }
    else if(l == NO_OPTION)
    {
      cust1.next = 3;
    }
  }
}
