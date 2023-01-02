import 'package:flutter/material.dart';
import 'package:my_app/components/tabs/calls.dart';
import 'package:my_app/components/tabs/camera.dart';
import 'package:my_app/components/tabs/chats.dart';
import 'package:my_app/components/tabs/status.dart';
import 'package:my_app/constant/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("WhatApp"),
              backgroundColor: whatappColor,
              centerTitle: false,
              bottom: TabBar(
                tabs: [
                  Icon(Icons.camera_alt),
                  Text("Chats"),
                  Text("Status"),
                  Text("Calls")
                ],
              ),
              actions: [
                Icon(Icons.search),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("New Group"),
                      value: '1',
                    ),
                    PopupMenuItem(
                      child: Text("Setting"),
                      value: '2',
                    ),
                    PopupMenuItem(
                      child: Text("Logout"),
                      value: '3',
                    ),
                  ],
                ),
                SizedBox(width: 10)
              ],
            ),
            body: TabBarView(
              children: [CameraView(), ChatsView(), StatusView(), CallsView()],
            )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
