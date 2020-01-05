void get_available_times(Date [] date, TableRow [] planes, String dest)
{
  int j = 0;
  for(int i = 0; i < available_planes.getRowCount(); i++)
  {
    if((planes[i].getString("destination")).equals(dest))
    {
      date[j] = new Date(planes[i].getInt("time")*1000);
      j++;
    }
  }
}
