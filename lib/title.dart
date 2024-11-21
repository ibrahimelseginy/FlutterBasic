import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String text;
  TitleWidget(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 2),
        color: const Color(0xFF8529BA),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
