import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }
  Widget build(BuildContext context){
    var questions = [ 'What\'s your favorite color?','What\'s your favorite animal?'];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My First App"),),
      body: Column(
        children: <Widget>[
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),

        ],
      ),
    ),);
  }
}
