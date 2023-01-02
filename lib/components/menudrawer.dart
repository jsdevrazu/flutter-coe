import 'package:flutter/material.dart';
import 'package:my_app/components/navigationdrawer.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/screens/login.dart';

class MyMenuDrawer extends StatefulWidget {
  const MyMenuDrawer({super.key});

  @override
  State<MyMenuDrawer> createState() => _MyMenuDrawerState();
}

class _MyMenuDrawerState extends State<MyMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: primaryColor),
            accountName: Text("Username"),
            accountEmail: Text("email@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/6829488/pexels-photo-6829488.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load")),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, MyNavigation.id);
            },
          ),
        ],
      ),
    );
  }
}
