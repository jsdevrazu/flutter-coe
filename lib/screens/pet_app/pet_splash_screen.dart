import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/components/pet_app/logo.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/utils/routes_name.dart';

class PetSplashScreen extends StatefulWidget {
  const PetSplashScreen({super.key});

  @override
  State<PetSplashScreen> createState() => _PetSplashScreenState();
}

class _PetSplashScreenState extends State<PetSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, RoutesName.petStartScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: petPrimary,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: MyLogo(
                width: 200.0,
                height: 200.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
