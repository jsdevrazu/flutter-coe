import 'package:flutter/material.dart';
import 'package:my_app/constant/colors.dart';
import 'package:my_app/screens/pet_app/pet_shop_details_screen.dart';
import 'package:my_app/screens/pet_app/pet_shop_screen.dart';
import 'package:my_app/screens/pet_app/pet_splash_screen.dart';
import 'package:my_app/screens/pet_app/pet_start_screen.dart';
import 'package:my_app/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.petSplashScreen:
        return MaterialPageRoute(builder: (context) => const PetSplashScreen());
      case RoutesName.petStartScreen:
        return MaterialPageRoute(builder: (context) => const PetStartScreen());
      case RoutesName.petShopScreen:
        return MaterialPageRoute(builder: (context) => const PetShopScreen());
      case RoutesName.petDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const PetShopDetailsScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text(
                "Invalid Route",
                style: TextStyle(color: primaryColor, fontSize: 20),
              ),
            ),
          );
        });
    }
  }
}
