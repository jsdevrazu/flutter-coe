import 'package:flutter/material.dart';
import 'package:my_app/screens/covid_tracker/splash_screen.dart';

class CovidAppScreen extends StatelessWidget {
  const CovidAppScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
