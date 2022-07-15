import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = 'You are awesome and innocent..!';
    } else if (resultScore <= 12) {
      resultText = ' You are pretty good..!';
    } else if (resultScore <= 16) {
      resultText = 'You are just good ..!';
    } else {
      resultText = 'You are bad..!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 50,
      widthFactor: 50,
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetQuiz, child: const Text('Restart Quiz'))
        ],
      ),
    );
  }
}
