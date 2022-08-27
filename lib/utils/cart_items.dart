import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacomer_app/model/food_model.dart';

import '../controller/state_controller.dart';
import '../contstriants.dart';

class CartItem extends StatelessWidget {
  CartItem({Key? key, required this.cartitems}) : super(key: key);
  final Food cartitems;
  final StateController stateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cartitems.name,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold, color: ktextcolor),
              ),
              SizedBox(
                height: 5,
              ),
              Text.rich(TextSpan(
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(text: "\$${cartitems.price}"),
                    const TextSpan(text: "    "),
                    const TextSpan(text: ".300 Cal")
                  ])),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  stateController.decrement(cartitems);
                },
                child: Container(
                  child: Icon(Icons.remove),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: const Color(0xff8a8a8a))),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Obx(() {
                return Badge(
                    badgeColor: kprimarycolor,
                    badgeContent: Text(
                      "${cartitems.quantity.value}X",
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Image.asset(cartitems.img));
              }),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  stateController.increment(cartitems);
                },
                child: Container(
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: const Color(0xff8a8a8a))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
