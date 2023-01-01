import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent.shade200,
          title: const Text(
            "My First App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Text(
              "Cool one $counter",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              counter++;
            })
          },
          child: Icon(Icons.add),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
