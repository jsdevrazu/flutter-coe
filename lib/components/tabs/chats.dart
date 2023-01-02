import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/13802951/pexels-photo-13802951.jpeg?auto=compress&cs=tinysrgb&w=800"),
                ),
                title: Text(
                  "Razu Islam",
                  style: TextStyle(
                      color: whatappColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Last Message me",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Text(
                  "1:05 pm",
                  style: TextStyle(color: Colors.black),
                ));
          }),
    );
  }
}
