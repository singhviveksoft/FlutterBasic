
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:second_demo/UnitConvertor/Category.dart';
import 'package:second_demo/UnitConvertor/FormScreen.dart';



class Routing {
  static const String catgy = '/';
  static const String form = '/form';



  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuePassed;
    if(settings.arguments!=null){
      valuePassed=settings.arguments  as  Map<String,dynamic>;
    }

    switch (settings.name) {


      case form:
        return MaterialPageRoute(
          builder: (context) {
            return FormScreen(title: valuePassed['title'],);
          },
        );

      default:
        throw 'no screen';
    }
  }
}
