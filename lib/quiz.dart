import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          //Below, the first Bracket is for index of list and the second [] is for Key of Map
          questionText: questions[questionIndex]['questionText']
              as String, // in older versions it work without "as string"
        ),
        //Raised Button are depricated ... they  are same as Elevated Buttons
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        // Answer(answerQuestion),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']),
              answer['text']
                  as String); //by passing ananyamouse function we have eliminate the need of passing argunets in the main.dart
        }).toList()
      ],
    );
  }
}
