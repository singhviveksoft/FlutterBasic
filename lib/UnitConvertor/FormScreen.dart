import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  final String title;

  const FormScreen({Key? key, required this.title}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController tc_input = TextEditingController();
  TextEditingController tc_output = TextEditingController();
  var _unit = ['Area1', 'Area2', 'Area3'];
  var _onit = ['Area4', 'Area5', 'Area6'];

  String dropdownvalue = 'Area1';
  String dropdownvalue1 = 'Area4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _formFill(),
    );
  }

  Widget _formFill() {
    return
      Form(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: tc_input,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Plz enter Rate of Interest amt';
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: 'Input',
                hintText: 'Input',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0)),
            child: DropdownButton<String>(
              items: _unit.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value),
                  ),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue = newvalue ?? 'other';
                });
              },
              value: dropdownvalue,
              isExpanded: true,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: tc_input,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Plz enter Rate of Interest amt';
              }
              return null;
            },
            decoration: InputDecoration(
                labelText: 'Input',
                hintText: 'Input',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0)),
            child: DropdownButton<String>(
              items: _onit.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(value),
                  ),
                );
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  dropdownvalue1 = newvalue ?? 'other';
                });
              },
              value: dropdownvalue1,
              isExpanded: true,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
        ),
      ]),
    );
  }
}
