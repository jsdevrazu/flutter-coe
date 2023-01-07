import 'package:flutter/material.dart';
import 'package:my_app/components/pet_app/app_button.dart';
import 'package:my_app/components/pet_app/logo.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/utils/routes_name.dart';

class PetStartScreen extends StatefulWidget {
  const PetStartScreen({super.key});

  @override
  State<PetStartScreen> createState() => _PetStartScreenState();
}

class _PetStartScreenState extends State<PetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: petPrimary,
      body: SafeArea(
        child: Container(
          child: Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 140),
                Center(
                  child: Container(
                    child: MyLogo(
                      width: 128.0,
                      height: 38.0,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Shop for your\n love today",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: Fonts.interRegular,
                  ),
                ),
                const SizedBox(height: 30),
                AppButton(
                  title: "Get Started",
                  onPress: () {
                    Navigator.pushNamed(context, RoutesName.petShopScreen);
                  },
                ),
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.bottomRight,
                  width: MediaQuery.of(context).size.width,
                  height: 322,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/assets/start.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
