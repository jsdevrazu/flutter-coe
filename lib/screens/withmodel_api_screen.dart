import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/utils/apiEndPoints.dart';

class WithoutApiScreen extends StatefulWidget {
  const WithoutApiScreen({super.key});

  @override
  State<WithoutApiScreen> createState() => _WithoutApiScreenState();
}

class _WithoutApiScreenState extends State<WithoutApiScreen> {
  var userList = [];

  Future<void> getUsers() async {
    final res = await http.get(Uri.parse(users));
    if (res.statusCode == 200) {
      userList = jsonDecode(res.body.toString());
    } else {
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          backgroundColor: secondaryColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: FutureBuilder(
                      future: getUsers(),
                      builder: (context, snapshot) {
                        return ListView.builder(
                            itemCount: userList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: primaryColor,
                                ),
                                title: Text(
                                  userList[index]["name"].toString(),
                                  style: TextStyle(
                                      color: primaryColor, fontSize: 20),
                                ),
                                subtitle: Text(
                                  userList[index]["email"].toString(),
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 16),
                                ),
                                trailing: Text(
                                  userList[index]["username"].toString(),
                                  style: TextStyle(
                                      color: secondaryColor, fontSize: 16),
                                ),
                              );
                            });
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
