import 'package:flutter/material.dart';
import 'package:task_1_algoriza/pages/home_page.dart';
import 'package:task_1_algoriza/pages/log_in_page.dart';
import 'package:task_1_algoriza/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/sign': (context) => const SignInPage(),
        '/register': (context) => const RegisterPage(),
      },
      home: const HomePage(),
    );
  }
}
