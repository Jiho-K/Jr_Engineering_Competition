class Plane 
{
  String name;
  int vessel_number;
  Seat [][] seats;
  int rows;
  int columns;
  String desentation;
  Date date;
  
  Plane()
  {
    name = " ";
    vessel_number = 0;
    seats = new Seat [40][40];
    rows = 0;
    columns = 0;
    desentation = " ";
    date = new Date();
  }
  
}
