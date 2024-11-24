import 'package:babysteps/answer_button.dart';
import 'package:babysteps/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[0];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            currentQuestion.text,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer, () {});
          })
        ],
      ),
    );
  }
}
