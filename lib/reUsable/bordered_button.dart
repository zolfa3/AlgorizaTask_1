import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class BorderedBtn extends StatelessWidget {
  final String text;

  const BorderedBtn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 55,
        width: double.infinity,
        child: MaterialButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // note: did not find the right icon
              const Icon(
                Icons.ac_unit,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10,
              ),
              CustomText(
                text: text,
                weight: FontWeight.w600,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
