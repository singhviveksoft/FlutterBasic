class MyClass {
  static final MyClass _singleton = new MyClass._internal();

  factory MyClass() {
   return _singleton;//load the instance from cache
  //  return MyClass._internal(); //will create new instance
  }

     MyClass._internal() {
    print("hello");
  }
}
class User{
  final String name;
    String  email;

  User._internal(this.name, this.email){
    email="aaaa";
  }

  factory User.newUser(String name){
    String e="abc@gmail.com";
    return User._internal(name, e);
  }

}

class BaseClass{
  String name;
  String type;

  BaseClass._(this.name,this.type);

  factory BaseClass(String name,String type){

    switch(type){
      case "A":
        return A(name,type);

      case "B":
        return B(name,type);

      default :
        return BaseClass._(name,type);

    }

  }
  @override
  String toString() {
    return "base class";
  }


}
class A extends BaseClass{
  A(String name,String type) : super._(name,type);
  @override
  String toString() {
    return type;
  }

}

class B extends BaseClass{
  B(String name,String type) : super._(name,type);

  @override
  String toString() {
    return type;
  }
}

void main(){

  BaseClass b_class=BaseClass("vivek", "c");
  print(b_class);



  MyClass myObj = new MyClass(); // get back the singleton

  MyClass myObj1 = new MyClass(); // still getting back the singleton

  print(myObj1==myObj);

  User user=User.newUser("vivek");

  print(user.email);
}


