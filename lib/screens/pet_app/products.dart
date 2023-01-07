import 'package:flutter/material.dart';
import 'package:my_app/components/pet_app/gap.dart';
import 'package:my_app/components/pet_app/product.dart';
import 'package:my_app/constant/colors.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            MyProduct(
              name: "Pet Oatmeal Spray",
              price: "Eur 235.00",
              path: "lib/assets/product.png",
            ),
            Gap(isWidth: true, isHeight: false, width: 30),
            MyProduct(
              name: "Fleece Cat Carrier",
              price: "Eur 265.00",
              path: "lib/assets/product2.png",
            ),
          ],
        ),
        const Gap(isWidth: false, isHeight: true, height: 20),
        Row(
          children: const [
            MyProduct(
              name: "Veterinary Ear Drops",
              price: "Eur 93.4",
              path: "lib/assets/product3.png",
            ),
            Gap(isWidth: true, isHeight: false, width: 30),
            MyProduct(
              name: "Pet Vipes Spray",
              price: "Eur 233.4",
              path: "lib/assets/product4.png",
            ),
          ],
        ),
      ],
    );
  }
}
