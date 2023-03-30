import 'package:flutter/material.dart';
import 'homeScreen/home_screen.dart';
import 'homeScreen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Comparator',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: MainScreen(),
    );
  }
}
