import 'package:flutter/material.dart';
import 'package:text_example/di/service_locator.dart';
import 'package:text_example/screen/text_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextScreen(),
    );
  }
}
