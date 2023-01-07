import 'package:flutter/material.dart';
import 'package:my_app/components/pet_app/brand.dart';
import 'package:my_app/components/pet_app/gap.dart';
import 'package:my_app/components/pet_app/logo.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/screens/pet_app/products.dart';

class PetShopScreen extends StatefulWidget {
  const PetShopScreen({super.key});

  @override
  State<PetShopScreen> createState() => _PetShopScreenState();
}

class _PetShopScreenState extends State<PetShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: petSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.apps_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        title: Container(
          child: MyLogo(width: 100.0, height: 100.0),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choses Brand",
              style: TextStyle(
                  color: blackColor,
                  fontFamily: Fonts.interLight,
                  fontSize: 16),
            ),
            const SizedBox(height: 20),
            Container(
              height: 70,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  Brand(path: "lib/assets/pet1.png"),
                  Gap(isWidth: true, isHeight: false, width: 15),
                  Brand(path: "lib/assets/pet2.png"),
                  Gap(isWidth: true, isHeight: false, width: 15),
                  Brand(path: "lib/assets/pet1.png"),
                  Gap(isWidth: true, isHeight: false, width: 15),
                  Brand(path: "lib/assets/pet2.png"),
                ],
              ),
            ),
            const Gap(isWidth: false, isHeight: true, height: 30),
            Text(
              "Choses Products",
              style: TextStyle(
                  color: blackColor,
                  fontFamily: Fonts.interLight,
                  fontSize: 16),
            ),
            const Gap(isWidth: false, isHeight: true, height: 30),
            const Products(),
          ],
        ),
      )),
    );
  }
}
