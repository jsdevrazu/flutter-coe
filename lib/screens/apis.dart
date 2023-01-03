import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/constant/colors.dart';
import 'package:my_app/types/post_model.dart';
import 'package:my_app/utils/apiEndPoints.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  List<Post> todosList = [];

  Future<List<Post>> getTodos() async {
    final res = await http.get(Uri.parse(todos));
    var data = jsonDecode(res.body.toString());
    if (res.statusCode == 200) {
      for (Map i in data) {
        Post todos = Post(
            userId: i["userId"],
            id: i["id"],
            title: i["title"],
            completed: i["completed"]);
        todosList.add(todos);
      }
      return todosList;
    } else {
      return todosList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Api Course"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: FutureBuilder(
                    future: getTodos(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: Container(
                            child: Text("loading..."),
                          ),
                        );
                      } else {
                        return ListView.builder(
                            itemCount: todosList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                  todosList[index].title,
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                trailing: todosList[index].completed
                                    ? Icon(Icons.check)
                                    : Icon(Icons.radio_button_unchecked),
                                subtitle:
                                    Text(todosList[index].completed.toString()),
                                leading: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://images.pexels.com/photos/3584924/pexels-photo-3584924.jpeg?auto=compress&cs=tinysrgb&w=800"),
                                ),
                              );
                            });
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
