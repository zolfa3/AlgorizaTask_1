import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final bool isLabel;
  final double font;
  final weight;
  final align;
  final Color color;

  const CustomText({
    Key? key,
    required this.text,
    this.font = 20,
    this.isLabel = false,
    this.color = Colors.black,
    this.weight = FontWeight.w500,
    this.align = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: isLabel ? 35 : font,
        fontWeight: isLabel ? FontWeight.bold : weight,
        color: color,
      ),
    );
  }
}
