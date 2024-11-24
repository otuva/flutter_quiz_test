import 'package:babysteps/questions_screen.dart';
import 'package:babysteps/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  } 

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget = activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
