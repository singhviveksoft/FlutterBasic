void main(){
var name=Name1.constructor1(first_name: "ggg");
name.fullName();
User("", "");
}
//constructor
//Default Constructor
//Parameterized Constructor
//Named Constructor(multiple constr)


class User1{ // parameter Constructor
  final String age,grender;
       //positional arguments
 User1(this.age,this.grender); //all final must be initialize

}

class User2{ //multiple named constructor
  final String name,age;
  String? last_name;
  User2.constructor1(this.name,this.age,this.last_name);
  User2.constructor2(this.name,this.age); //final and non nullable must be initialize.
  User2.constructor3(this.name,this.age);

}

  class User{
  String f_name,l_name,age,id;

  User(this.f_name,this.l_name):age="22",id="6"; //initializer list
  //  age="22"; //work in java but not in dart
    // when we have give some variablw a value other than passing in the constructor


}



















class Name1{
  String? first_name;
  String? last_name;


  //Named Constructor(multiple constr)

  Name1.constructor1({this.first_name,this.last_name});
  Name1.constructor2();
  Name1.constructor3(this.first_name);

  void fullName() => print("f ${first_name}, l ${last_name}");
}