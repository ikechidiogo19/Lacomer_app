import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacomer_app/model/food_model.dart';

import '../controller/state_controller.dart';
import '../contstriants.dart';
import '../controller/cart_controller.dart';

class CartButton extends StatelessWidget {
  final Food items;
  CartButton({
    Key? key,
    required this.items,
  }) : super(key: key);
  final StateController stateController = Get.find();
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        cartController.addtocart(items);
      },
      child: Container(
        height: 50,
        width: size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
          border: Border.all(color: const Color(0xff8a8a8a)),
        ),
        child: Center(
          child: GetX<StateController>(builder: (controller) {
            return Text(
              "Add to Cart + \$ ${controller.addprice(items).toStringAsFixed(2)}",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: ktextcolor, fontWeight: FontWeight.bold),
            );
          }),
        ),
      ),
    );
  }
}
