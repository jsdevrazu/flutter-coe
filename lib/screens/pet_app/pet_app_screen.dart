import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';
import 'package:my_app/utils/routes_name.dart';

class PetAppScreen extends StatelessWidget {
  const PetAppScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.petSplashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
