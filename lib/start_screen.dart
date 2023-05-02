import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {Key? key}) : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz_logo.png',
            width: 300,
            color: Colors.white24,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter in fun way',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.black, width: 1),
            ),
            onPressed: () {
              startQuiz();
            },
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
