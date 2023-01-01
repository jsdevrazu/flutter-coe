import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/screens/calculator.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'calculator': (context) => CalculatorScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
          backgroundColor: primaryColor,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/12/16/22/25/sunset-570881__480.jpg"),
                ),
                accountName: Text("Razu Islam"),
                accountEmail: Text("test@email.com"),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  print("log");
                },
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => CalculatorScreen())));
              },
              child: Container(
                width: 100,
                height: 100,
                child: const Center(
                  child: Text(
                    "Nice",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(number)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
