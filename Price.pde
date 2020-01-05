
/*
REQUIRES: price after first rate seats, whether the customer chose visually, if there were only one seat available in the row
PROMISES: returns the price based on whether visual was used to choose seats, what seat they chose.

*/
double find_price(double price, boolean visual, int seats_available){
  if(visual == true){
    price+=50;
  }
  if(seats_available == 1){
    price -= 70;
  }
  
  return price;
}
