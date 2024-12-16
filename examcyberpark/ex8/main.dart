import 'package:flutter/material.dart';
import 'package:nisham/examcyberpark/ex8/settings.dart';
import 'package:provider/provider.dart';
import 'provider.dart';
import 'screen.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: HomeScreen(),
      routes: {
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}