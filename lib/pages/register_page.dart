import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/blue_text.dart';
import 'package:task_1_algoriza/reUsable/colored_button.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';
import 'package:task_1_algoriza/reUsable/country_code.dart';
import 'package:task_1_algoriza/reUsable/bordered_button.dart';
import 'package:task_1_algoriza/reUsable/text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var emailControll = TextEditingController();

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
                height: 770,
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
                          text: 'Register',
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
                    CustomTextField(
                      label: 'Email',
                      controller: emailControll,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const CountryCode(),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      label: 'Password',
                      controller: emailControll,
                      isPass: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
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
                          text: 'Has any account?',
                          font: 17,
                        ),
                        BlueText(
                          text: 'Sign in here',
                          fun: () {
                            Navigator.pushNamed(context, '/sign');
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const CustomText(
                            text:
                                'By regestering your account, you are agree to our',
                            font: 14,
                            weight: FontWeight.w400,
                          ),
                          BlueText(
                            text: 'terms and condition',
                            fun: () {},
                          )
                        ],
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
