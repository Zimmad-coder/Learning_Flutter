// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

/*void main() {
  //runApp is defined in material.dart it runs our app
  runApp(MyApp());
}*/
void main() => runApp(const MyApp());

//MyApp extends stateless(this is a base class) widget which make the flutter know
//that MyApp will be used as widget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      // Map inside list
      'questionText': "What is your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ] //list
    }, //Map
    {
      'questionText': "what is your favorite animal?",
      'answers': [
        {'text': 'Rabit', 'score': 1},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephent', 'score': 5},
        {'text': 'Horse', 'score': 1},
      ] //list
    }, //Map
  ]; //List

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;
  int _totalScore = 0;
  //BuildContext is a Class

  _answerQuestion(int score) {
    //we have to pass it as pointer to the onPressed method
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });

    //for debugging and console only
    if (_questionIndex < _questions.length) {
      print("we have more questions "); // for console only
    } else {
      print('no more questons'); // this will be only outputed in console
    }
  }

  @override
  Widget build(BuildContext context) {
    //MaterialApp uses named arguments
    //it mean we don't have to pass data inorder here
    //home is the core argument which flutter will bring on to screen when the app is mounted to the screen

    return MaterialApp(
      //hit ctrl + space to have autofill options
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First app'),
        ), //adding comma formats your code through dart formatter
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
