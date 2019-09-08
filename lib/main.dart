import 'package:flutter/material.dart';

void main() =>
    runApp(MyApp()); //For only one expression method can be right be like this

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basics'),
        ),
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
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
