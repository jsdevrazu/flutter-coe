import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  const MyListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ListTile(
          leading: FlutterLogo(),
          title: Text(
            "Nice to meet you",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "This me sub title",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          trailing: Icon(Icons.check),
        )
      ],
    );
  }
}
