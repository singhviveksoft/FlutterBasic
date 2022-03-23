main(){
//f1('vivek');
//f2(5);
f3(7,s3: 8);
f4(9);
}

void f1(String name){
  print(name);

}
//optional positional parameter[] =

 // optional in square bracket has to be nullable or assign default value
void f2(int s1, [ int s2 = 6, int? s3]){
  print(s1);
  print(s2);
  print(s3);
}
//named parameter{}
//both =,: are good to go
//named parameter are by default optional either nullable default value
//to make any parameter necssary in named argments required is used.
void f3(int s1, { int s2 =6, required int? s3}){
  print(s1);
  print(s2);
  print(s3);
}
//named parameter are by default optional either nullable default value
void f4(int s1, { int s2 =6,  int? s3}){
  print(s1);
  print(s2);
  print(s3);
}