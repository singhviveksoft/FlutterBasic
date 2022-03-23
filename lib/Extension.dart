extension listSum on List<int>{
 int sum(){
   var sum=0;
   for(var item in this){
     sum+= item;
   }
   return sum;
 }

}