void get_unique_destinations(String [] arr, TableRow [] planes)
{

  int i = 0;
  int j = 0;
  boolean check = true;
  
  while(i < available_planes.getRowCount())
  {
    for(int a = 0; a < arr.length; a++)
    {
      if((planes[i].getString("destination")).equals(arr[a]))
      {
        check = false;
      }
    }
    if(check)
    {
      arr[j] = planes[i].getString("destination");
      j++;
    }
    i++;
    check = true;
  }
}
