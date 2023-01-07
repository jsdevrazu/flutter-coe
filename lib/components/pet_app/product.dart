import 'package:flutter/material.dart';
import 'package:my_app/components/pet_app/gap.dart';
import 'package:my_app/constant/colors.dart';

class MyProduct extends StatelessWidget {
  final String name, price, path;

  const MyProduct(
      {Key? key, required this.name, required this.price, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        print("cool");
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: petGray,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: whiteColor,
                blurRadius: 0.1,
                offset: Offset(0, 0.2), // changes position of shadow
              ),
            ]),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: Icon(
                    Icons.heart_broken,
                    color: whiteColor,
                    size: 12,
                  ),
                ),
              ),
            ),
            Container(
              width: 110,
              height: 100,
              child: Image(
                fit: BoxFit.contain,
                image: AssetImage(path),
              ),
            ),
            const Gap(isWidth: false, isHeight: true, height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 12.5,
                          fontFamily: Fonts.interRegular),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          color: petText,
                          fontSize: 12,
                          fontFamily: Fonts.interLight),
                    ),
                    const Gap(isWidth: false, isHeight: true, height: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 10,
                          color: petPrimary,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: petPrimary,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: petPrimary,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: petPrimary,
                        ),
                        Icon(
                          Icons.star,
                          size: 10,
                          color: petPrimary,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
