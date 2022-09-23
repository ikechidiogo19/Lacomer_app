import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:lacomer_app/controller/nav_controller.dart';
import 'package:lacomer_app/contstriants.dart';
import 'package:lacomer_app/view/cartscreen.dart';
import 'package:get/get.dart';
import '../view/decover.dart';
import '../view/checkout.dart';
import '../controller/cart_controller.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({Key? key}) : super(key: key);

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  final CartController cartcontroller = Get.find();
  final NavController navController = Get.find();
  int _selectedindex = 0;
  static List<Widget> screens = [
    const DiscoverPage(),
    Checkout(),
    CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BubbleBottomBar(
        tilesPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        elevation: 8,
        items: <BubbleBottomBarItem>[
          const BubbleBottomBarItem(
              backgroundColor: kprimarycolor,
              icon: Icon(
                Icons.access_time,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.access_time,
                color: kprimarycolor,
              ),
              title: Text("Discover")),
          const BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite_border,
                color: Colors.deepPurple,
              ),
              title: Text("Favourite")),
          BubbleBottomBarItem(
              badge: GetX<CartController>(builder: (controller) {
                return Text("${controller.count}");
              }),
              showBadge: true,
              badgeColor: kprimarycolor,
              backgroundColor: Colors.indigo,
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              activeIcon: const Icon(
                Icons.shopping_cart,
                color: Colors.indigo,
              ),
              title: const Text("Cart")),
        ],
        opacity: .2,
        currentIndex: _selectedindex,
        onTap: (int? index) {
          // navController.navbar(index, _selectedindex);
          setState(() {
            _selectedindex = index!;
          });
        },
      ),
      drawer: const Drawer(backgroundColor: kprimarycolor),
    );
  }
}
