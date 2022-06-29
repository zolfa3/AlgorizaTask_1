import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class CountryCode extends StatelessWidget {
  const CountryCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CustomText(
              text: 'Phone Number',
              weight: FontWeight.w400,
              font: 18,
            ),
          ],
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              CountryCodePicker(
                initialSelection: 'Eg',
                showCountryOnly: true,
                showDropDownButton: true,
                showFlag: false,
                showFlagDialog: true,
              ),
              const Expanded(
                child: TextField(
                  // controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Eg. 812345678',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
