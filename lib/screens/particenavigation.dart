import 'package:flutter/material.dart';
import 'package:my_app/components/navigationdrawer.dart';
import 'package:my_app/screens/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: MyNavigation.id,
    routes: {
      MyNavigation.id: (context) => MyNavigation(),
      LoginScreen.id: (context) => LoginScreen()
    },
    // home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MyNavigation();
  }
}
