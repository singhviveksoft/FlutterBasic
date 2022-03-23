
import 'dart:async';
import 'dart:core';
import 'dart:io';

void main(){
  letsEatsPizza();
}


void letsEatsPizza() {
  Order();
// String Pizza= await getOrderedPizza(); //holding main thread for reciving value.
/*  getOrderedPizza().then((value) { // after value recived from one method then pass to another method with main thread hold
    eatAndPay(value);
  });*/
var f=  getOrderedPizza();
  eatAndPay('ju');

  chatting();

}
void Order(){
  print('Order placed');
}

 Future<String>  getOrderedPizza() async{
  Duration wentTime=Duration(seconds: 4);
 // sleep(wentTime);
  String pizza='No pizza';
     await Future.delayed(wentTime,(){ // wait for value
    pizza="Dominos";
    print('pizza2 deliverd successfully');
  });
  print('pizza1 deliverd successfully');
/*  Future.delayed(wentTime,(){// asychnous exexution printing went done
    pizza="Dominos";
    print('pizza deliverd successfully');
  });*/
  return pizza;
 }

void chatting(){
  print('chatting');
}
void eatAndPay(String pizza){
/*  Duration duration=Duration(seconds: 4);
  sleep(duration);*/
  print('pay $pizza and on my way home');
}