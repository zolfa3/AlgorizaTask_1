import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPass;
  final String label;

  const CustomTextField({
    Key? key,
    this.isPass = false,
    required this.label,
    required this.controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var icon = Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: widget.label,
              weight: FontWeight.w400,
              font: 18,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          // controller: emailControll,
          keyboardType: widget.isPass
              ? TextInputType.visiblePassword
              : TextInputType.emailAddress,
          obscureText:
              widget.isPass && icon == Icons.visibility_off ? true : false,

          decoration: InputDecoration(
            // labelText: widget.label,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            hintText: widget.isPass ? 'Password' : 'Eg. example@gmail.com',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            suffixIcon: widget.isPass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        if (icon == Icons.visibility) {
                          icon = Icons.visibility_off;
                        } else {
                          icon = Icons.visibility;
                        }
                      });
                    },
                    icon: Icon(
                      icon,
                      color: Colors.black,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
