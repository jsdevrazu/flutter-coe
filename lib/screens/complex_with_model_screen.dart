import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/types/products_model.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/utils/apiEndPoints.dart';

class ComplexScreen extends StatefulWidget {
  const ComplexScreen({super.key});

  @override
  State<ComplexScreen> createState() => _ComplexScreenState();
}

class _ComplexScreenState extends State<ComplexScreen> {
  Future<Products> getProducts() async {
    final res = await http.get(Uri.parse(products));
    var data = jsonDecode(res.body.toString());

    if (res.statusCode == 200) {
      print("succ");
      return Products.fromJson(data);
    } else {
      print("error");
      return Products.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Complex  Apis"),
          backgroundColor: primaryColor,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: FutureBuilder<Products>(
                      future: getProducts(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemCount: snapshot.data!.data!.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(snapshot
                                        .data!.data![index].shop!.image
                                        .toString()),
                                  ),
                                  title: Text(snapshot
                                      .data!.data![index].shop!.name
                                      .toString()),
                                  subtitle: Text(snapshot
                                      .data!.data![index].shop!.shopemail
                                      .toString()),
                                );
                              });
                        } else {
                          return Center(
                            child: Container(
                              child: Text(
                                "loading...",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        }
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
