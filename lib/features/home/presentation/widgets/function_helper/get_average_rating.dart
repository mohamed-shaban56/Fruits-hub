double getAverageRating({int ? newValue})
{
  List<int>productRait=[2,4,8,5];
if(newValue !=null)
{
  productRait.add(newValue);
}
  
  int sum=productRait.reduce((a,b)=>a+b);
  return sum/productRait.length;
}