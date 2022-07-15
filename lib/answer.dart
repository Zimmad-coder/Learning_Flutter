import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  // ignore: use_key_in_widget_constructors
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 144, 133, 178),
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              //fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
