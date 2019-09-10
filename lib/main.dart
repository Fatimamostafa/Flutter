import 'package:flutter/material.dart';
import 'package:flutter_basics/question.dart';

void main() => runApp(MyApp()); //For only one expression method can be right be like this

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var _index = 0;

  void _answerQuestion() {
    setState(() {
      _index += 1;
    });

    print('Answer chosen!');
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics'),
        ),
        body: Column(
          children: [
            Question(questions [_index]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer Chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: ()  {
                //..
                print('Answer Chosen!');
              }
            ),
          ],
        ),
      ),
    );
  }
}
