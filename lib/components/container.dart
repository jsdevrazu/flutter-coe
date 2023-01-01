import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(0.8),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.deepOrange, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          "form box",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w300, fontSize: 18),
        ),
      ),
    );
  }
}
