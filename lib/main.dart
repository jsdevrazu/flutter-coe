import 'package:flutter/material.dart';
import 'package:my_app/screens/covid_tracker/covid_tracker_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CovidAppScreen();
  }
}
