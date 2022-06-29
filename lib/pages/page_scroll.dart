import 'package:flutter/material.dart';
import 'package:task_1_algoriza/reUsable/custom_text.dart';

class PageScroll extends StatefulWidget {
  const PageScroll({Key? key}) : super(key: key);

  @override
  State<PageScroll> createState() => _PageScrollState();
}

class _PageScrollState extends State<PageScroll> {
  int index = 0;

  List images = [
    'assets/images/Page_1.png',
    'assets/images/Page_2.png',
    'assets/images/Page_3.png',
  ];

  List textBoldStrings = [
    "Get food delivery to your doorstep asap",
    'Buy any food from ypur favorite restaurant',
    '',
  ];

  List textThinStrings = [
    "We have young and professional delivery team that will bring your food as soon as possible to your doorstep",
    'We are constantly adding favourite restaurant throughout the terriotroy and around your area carefully selected',
    '...',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              onPageChanged: (int i) {
                setState(() {
                  index = i;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(images[index]),
                    CustomText(
                      text: textBoldStrings[index],
                      font: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: CustomText(
                        text: textThinStrings[index],
                        font: 17,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            width: 50,
            height: 30,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return smallCircle(index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget smallCircle(int i) {
    // int index = 0;
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: i == index ? Colors.indigo : Colors.indigo.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
