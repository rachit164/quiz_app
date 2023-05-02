import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({Key? key, required this.answerText, required this.onTap})
      : super(key: key);
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF050349),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
