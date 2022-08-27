import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacomer_app/controller/card_controller.dart';
import 'package:lacomer_app/controller/cart_controller.dart';
import 'package:lacomer_app/controller/nav_controller.dart';
import 'package:lacomer_app/controller/state_controller.dart';

import 'utils/base_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final StateController stateController = Get.put(StateController());
    final CartController cartController = Get.put(CartController());
    final CardController cardController = Get.put(CardController());
    final NavController navController = Get.put(NavController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lacomer app',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black)),
        fontFamily: "product sans",
      ),
      // initialRoute: DiscoverPage.routename,
      // routes: routes,
      home: const Basescreen(),
    );
  }
}
