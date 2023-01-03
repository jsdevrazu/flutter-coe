import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/types/users_model.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/utils/apiEndPoints.dart';

class ComplexApiScreen extends StatefulWidget {
  const ComplexApiScreen({super.key});

  @override
  State<ComplexApiScreen> createState() => _ComplexApiScreenState();
}

class _ComplexApiScreenState extends State<ComplexApiScreen> {
  List<Users> usersList = [];

  Future<List<Users>> getUsers() async {
    final res = await http.get(Uri.parse(users));
    var data = jsonDecode(res.body.toString());

    if (res.statusCode == 200) {
      usersList.clear();
      for (Map i in data) {
        usersList.add(Users.fromJson(i));
      }
      return usersList;
    } else {
      return usersList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Complex Api"),
          backgroundColor: whatappColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: FutureBuilder(
                      future: getUsers(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: Container(
                              child: Text(
                                "Loading...",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        } else {
                          return ListView.builder(
                              itemCount: usersList.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: RowComponents(
                                        name: usersList[index].name.toString(),
                                        username: usersList[index]
                                            .username
                                            .toString(),
                                        address: usersList[index]
                                            .address!
                                            .street
                                            .toString(),
                                        email:
                                            usersList[index].email.toString(),
                                      )),
                                );
                              });
                        }
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

class RowComponents extends StatelessWidget {
  final String name, username, email, address;

  RowComponents(
      {Key? key,
      required this.name,
      required this.username,
      required this.address,
      required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name: $name",
            style: TextStyle(
                color: primaryColor, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Username: $username",
            style: TextStyle(
                color: blackColor, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          Text(
            "Email: $email",
            style: TextStyle(
                color: blackColor, fontSize: 12, fontWeight: FontWeight.w400),
          ),
          Text(
            "Address: $address",
            style: TextStyle(
                color: blackColor, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
