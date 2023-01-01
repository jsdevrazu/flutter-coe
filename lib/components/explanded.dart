import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.redAccent.shade400,
            ),
            child: Center(
                child: Text(
              "hello magno",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
        Expanded(
          child: Container(
            height: 250,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.orangeAccent.shade400,
            ),
            child: Center(
              child: Text(
                "hello magno",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 350,
            decoration: BoxDecoration(
                color: Colors.yellowAccent.shade400,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "hello magno",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
