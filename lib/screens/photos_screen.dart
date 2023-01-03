import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/types/photos_model.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/utils/apiEndPoints.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({super.key});

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  List<Photos> photosLists = [];

  Future<List<Photos>> getPhotos() async {
    final res = await http.get(Uri.parse(photos));
    var data = jsonDecode(res.body.toString());
    if (res.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(
            title: i["title"],
            id: i["id"],
            albumId: i["albumId"],
            url: i["url"],
            thumbnailUrl: i["thumbnailUrl"]);
        photosLists.add(photos);
      }
      return photosLists;
    } else {
      return photosLists;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Photos Api"),
          backgroundColor: secondaryColor,
        ),
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: FutureBuilder(
                      future: getPhotos(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: Container(
                              child: Text(
                                "loading...",
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                              ),
                            ),
                          );
                        } else {
                          return ListView.builder(
                              itemCount: photosLists.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  subtitle: Text(
                                    photosLists[index].albumId.toString(),
                                  ),
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        photosLists[index].url.toString()),
                                  ),
                                  title: Text(
                                    photosLists[index].title,
                                    style: TextStyle(
                                        color: secondaryColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
