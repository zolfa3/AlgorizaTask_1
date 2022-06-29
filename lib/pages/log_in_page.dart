import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/blue_text.dart';
import 'package:task_1_algoriza/reUsable/colored_button.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';
import 'package:task_1_algoriza/reUsable/country_code.dart';
import 'package:task_1_algoriza/reUsable/bordered_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.blueAccent[100],
              ),
              Container(
                width: double.infinity,
                height: 550,
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Text('Welcome to fashion dialy'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          text: 'Sign in',
                          isLabel: true,
                        ),
                        Row(
                          children: [
                            BlueText(
                              text: 'Help',
                              fun: () {},
                            ),
                            const Icon(
                              Icons.circle,
                              color: Colors.blue,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CountryCode(),
                    ColoredBtn(
                      text: 'Sign in',
                      color: Colors.blue,
                      fun: () {},
                    ),
                    const CustomText(text: 'Or', font: 15),
                    const BorderedBtn(text: 'Sign with by google'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: 'Doesn\'t has any account?',
                          font: 17,
                        ),
                        BlueText(
                          text: 'Register here',
                          fun: () {
                            Navigator.pushNamed(context, '/register');
                          },
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CustomText(
                        text:
                            'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                        font: 14,
                        weight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
