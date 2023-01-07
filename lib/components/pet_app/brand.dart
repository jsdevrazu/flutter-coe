import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';

class Brand extends StatelessWidget {
  final String path;
  const Brand({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(path),
        ),
      ),
    );
  }
}
