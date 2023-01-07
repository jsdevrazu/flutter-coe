import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const AppButton({Key? key, required this.title, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: MediaQuery.of(context).size.width / 1,
          height: 58,
          decoration: BoxDecoration(
              color: blackColor, borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: whiteColor,
                  fontSize: 24,
                  fontFamily: Fonts.interLight),
            ),
          ),
        ),
      ),
    );
  }
}
