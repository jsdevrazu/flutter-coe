import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';

class CalculatorButton extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPress;
  const CalculatorButton(
      {Key? key,
      required this.title,
      required this.onPress,
      this.color = const Color(0xffa5a5a5)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: whiteColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
