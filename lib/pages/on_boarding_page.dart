import 'package:flutter/material.dart';
import 'package:task_1_algoriza/pages/page_scroll.dart';
import 'package:task_1_algoriza/reUsable/colored_button.dart';
import 'package:task_1_algoriza/pages/log_in_page.dart';
import 'package:task_1_algoriza/reUsable/blue_text.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.grey[300],
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const CustomText(
                        text: 'Skip',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const PageScroll(),
            ColoredBtn(
              text: 'Get Started',
              color: Colors.indigo,
              fun: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignInPage();
                    },
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: 'Don\'t have an account?',
                  font: 17,
                ),
                BlueText(
                  text: 'Sign Up',
                  fun: () {
                    Navigator.pushNamed(context, '/register');
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
