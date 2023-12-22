import 'package:flutter/material.dart';
import 'package:remainder_app/USP/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miss Minutes',
      home: SpalshScreen(),
    );
  }
}