import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "This one camera section",
            style: TextStyle(
                color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 10),
          Icon(Icons.camera_alt)
        ],
      ),
    );
  }
}
