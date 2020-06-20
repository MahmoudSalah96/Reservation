import 'package:flutter/material.dart';
import 'package:task/screens/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        primaryColor: Color(0xFF9EA3B5),
      ),
      home: LoadingScreen(),
    );
  }
}
