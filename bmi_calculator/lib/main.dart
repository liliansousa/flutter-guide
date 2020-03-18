import 'package:flutter/material.dart';

import './input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  // const darkred = Color(0xFF2b0000);
  // const primaryThemeColor = Color(0xFF2b0000);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Color(0xFF770000),
      //   accentColor: Color(0xFFa10000),
      //   scaffoldBackgroundColor: Color(0xFF2b0000),
      //   textTheme: TextTheme(
      //     body1: TextStyle(color: Color(0xFFFFFFFF) )
      //   )
      // ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2b0000),
        accentColor: Color(0xFF770000),
        scaffoldBackgroundColor: Color(0xFF2b0000),
      ),
      home: InputPage(),
    );
  }
}
