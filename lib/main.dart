import 'package:flutter/material.dart';
import 'calculator_screen.dart'; // Импорт вашего файла calculator_screen.dart
import 'history_screen.dart'; // Импорт вашего файла history_screen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CalculatorScreen(),
    );
  }
}
