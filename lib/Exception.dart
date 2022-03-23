import 'dart:io';

void main(){
List<String> l1=["aaa","bbb","cccc"];
String? input;
 int i;
print("Enter the index");
 try {
   input = stdin.readLineSync();
   i = int.parse(input??"@");
   print(l1[i]);
 }on RangeError{
   print("not in range");
 }on FormatException {
   print("not in formal");
 }
 finally{
   print("somethingh went wrong");
 }
}