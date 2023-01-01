import 'package:flutter/material.dart';
import 'package:my_app/components/listtitle.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                leading: FlutterLogo(),
                title: Text(
                  "Cool title $index",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "nice one",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
                trailing: Icon(Icons.menu_book_outlined),
              );
            }));
  }
}
