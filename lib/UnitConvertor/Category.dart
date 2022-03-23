import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:second_demo/UnitConvertor/Router.dart';


void main() {
  runApp(MaterialApp(

    onGenerateRoute: Routing.generateRoute,
    home: Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green[100],
        title: const Text(
          'Unit Converter',
          style: TextStyle(color: Colors.black, fontSize: 30.0),

        ),
      ),
      body: Category.c1(Icons.cake,
          const ['Length', 'Area', 'Volume', 'Mass', 'Time', 'Digital Storage']),
    ),
  ));
}

class Category extends StatefulWidget {
  final IconData icon;
  final List<String> titleList;

  Category.c1(this.icon, this.titleList);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: widget.titleList.length,

          itemBuilder: (context, index) {

            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routing.form,arguments: {
                  'title':widget.titleList[index]
                });
              },
              splashColor: index.isEven ? Colors.green : Colors.pinkAccent,
              highlightColor: index.isEven ? Colors.green : Colors.pinkAccent,
              borderRadius: const BorderRadius.all(Radius.circular(70.0)),
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Item.contructor(widget.icon,widget.titleList,index),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Item extends StatefulWidget {
  final IconData icon;
  final List<String> titleList;
  final int index;
  const Item({Key? key, required this.icon, required this.titleList, required this.index}) : super(key: key);

Item.contructor(this.icon,this.titleList, this.index);
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            widget.icon,
            size: 60.0,
          ),
        ),
        Text(
          widget.titleList[widget.index],
          style: const TextStyle(fontSize: 24.0),
        ),
      ],
    );
  }
}
