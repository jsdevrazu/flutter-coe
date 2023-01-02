import 'package:flutter/material.dart';
import 'package:my_app/constant/navigation.dart';
import 'package:my_app/screens/login.dart';

class MyNavigation extends StatefulWidget {
  static const String id = calculatorScreen;
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text("Calculator Screen")),
          )
        ],
      )),
    );
  }
}
