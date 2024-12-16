import 'package:flutter/material.dart';
import 'package:nisham/examcyberpark/ex3/screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random User App',
      home: RandomUserScreen(),
    );
  }
}