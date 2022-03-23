import './demo2.dart' hide display1;
import './demo3.dart' as e2;
import 'Extension.dart';
//import 'demo2.dart'  hide display4;



/*
extension listSum on List<int>{
  int sum(){
    var sum=0;
    for(var item in this){
      sum+= item;
    }
    return sum;
  }

}*/
void main() {
  e2.Element e = e2.Element();
  e2.Element().display1();
  e.display1();
  e.display2();

  Element e1 = Element();
  e1.display1();
  e1.display2();
  display5();

  var list=[1,2,3,4,5];
  print(list.sum());

}
