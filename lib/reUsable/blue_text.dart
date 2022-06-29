import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class BlueText extends StatelessWidget {
  final String text;
  final VoidCallback fun;

  const BlueText({
    Key? key,
    required this.text,
    required this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        fun();
      },
      child: CustomText(
        text: text,
        weight: FontWeight.w500,
        font: 15,
        color: Colors.blue,
      ),
    );
  }
}
