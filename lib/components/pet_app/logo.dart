import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final double width, height;
  const MyLogo({required this.width, required this.height, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: const Center(
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage('lib/assets/logo.png'),
        ),
      ),
    );
  }
}
