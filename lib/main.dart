import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var count = 0;
  void answerQuestion() {
    setState(() {
      count = count + 1;
    });

    print('hello $count');
  }

  @override
  Widget build(BuildContext context) {
    var question = ['what is your name', 'what is your pat name'];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("demo1"),
            ),
            body: Column(
              children: [
                Question(question[count]),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: const Text('answer 1'),
                  onPressed: answerQuestion,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: const Text('answer 2'),
                  onPressed: () => print('hello2'),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: const Text('answer 3'),
                  onPressed: () {
                    print('hello3');
                  },
                ),
              ],
            )));
  }
}
