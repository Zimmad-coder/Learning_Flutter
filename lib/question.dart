import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({required this.questionText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Text(
          questionText,
          style: const TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 34, 18, 18)),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
