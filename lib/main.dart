import 'package:flutter/material.dart';
import 'package:my_gov_assist/pages/page_three.dart';
// import 'package:my_gov_assist/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageThree(),
    );
  }
}
