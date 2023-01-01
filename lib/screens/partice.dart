import 'package:flutter/material.dart';
import 'package:my_app/components/textform.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent.shade400,
          title: Text(
            "Cool App Bar",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SafeArea(child: MyTextForm()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
