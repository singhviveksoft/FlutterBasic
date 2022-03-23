void main() {
//  print("hello");

  Object name = 'Bob';
  name = 5;

  var a = A();
  a._myName();
   a.sign(x: 4);
}

class A {
  String? name;
  var i;
  void _myName() {
    print(name ?? "vivek");
    print("hello");
    print(i);
  }

  void sign({required var x, var y}) {
    print(y);
    print(x);
  }
}
