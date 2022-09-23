import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lacomer_app/contstriants.dart';

import 'package:lacomer_app/model/food_model.dart';

import '../controller/state_controller.dart';
import '../utils/cart_button.dart';
import '../utils/default_button.dart';
import '../utils/star.dart';
import 'package:lacomer_app/view/checkout.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.fooddetails}) : super(key: key);
  final Food fooddetails;

  final StateController stateController = Get.find();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.1,
                  child: Container(
                    //add  aspectRatio
                    height: size.height * 0.25,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              fooddetails.img,
                            ))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  fooddetails.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold, color: ktextcolor),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Star(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "300 Cal",
                      style: TextStyle(color: Colors.grey, fontSize: 24),
                    ),
                    Text(
                      "\$${fooddetails.price.toString()}",
                      style: const TextStyle(
                        color: ktextcolor,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        stateController.decrement(fooddetails);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff8a8a8a)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: kprimarycolor,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: FittedBox(
                        child: Obx(() {
                          return Text(
                            fooddetails.quantity.value.toString(),
                            style: const TextStyle(color: Colors.white),
                          );
                        }),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        stateController.increment(fooddetails);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        child: const Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff8a8a8a)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
          //button
          CartButton(
            items: fooddetails,
          ),
          const SizedBox(
            height: 30,
          ),
          DefaultButton(
            press: () {
              Get.to(() => Checkout());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Check out now",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: klighttextcolor),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: klighttextcolor,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
