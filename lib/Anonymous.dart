void main(){
addSum([4,4,4,5], (int sum){
  print(sum);
});
//function are first class object(assiging value )
var result=(int sum){
  print(sum);
};
addSum([2,2,3], result);

//multiple(5)(3);
multiple(5)(10);
}

//higher order
//taking function as parameter.
void addSum(List<int> nums,Function result){
  var sum=0;
  for (var element in nums) {
    sum+=element;
  }

   result(sum);

}
//higher order
//return function as return type
//lexical closure
Function multiple(int mum){
  int calcl=5;
  Function result1=(int x){
    calcl*=mum*x;
    print(calcl);
  };
/*
  void result(){
    calcl*=mum;
    print(calcl);
  }
*/
  return result1;

}
