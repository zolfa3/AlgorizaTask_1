import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class ColoredBtn extends StatelessWidget {
  final double width;
  final Color color;
  final double borderRadius;
  final String text;
  final VoidCallback fun;

  const ColoredBtn({
    Key? key,
    required this.text,
    required this.fun,
    this.color = Colors.indigo,
    this.borderRadius = 10.0,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 55,
        width: width,
        child: ElevatedButton(
          onPressed: () {
            fun();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              color,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          child: CustomText(
            text: text,
            weight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
