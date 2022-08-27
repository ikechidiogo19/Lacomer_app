import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lacomer_app/contstriants.dart';
import 'package:lacomer_app/utils/cart_items.dart';
import 'package:lacomer_app/utils/default_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:lacomer_app/view/checkout.dart';

import '../controller/cart_controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cart",
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontWeight: FontWeight.bold, color: ktextcolor),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: GetX<CartController>(builder: (controller) {
                return ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  itemBuilder: (context, index) {
                    return Slidable(
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: (context) {
                            cartController
                                .removetocart(controller.cartitems[index]);
                          },
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                      ]),
                      child: CartItem(
                        cartitems: controller.cartitems[index],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: 1,
                    );
                  },
                  itemCount: controller.cartitems.length,
                );
              }),
            ),
            DefaultButton(
                press: () {
                  Get.to(() => Checkout());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GetX<CartController>(builder: (controller) {
                      return Text(
                        "\$${controller.totalprice.toStringAsFixed(2)}",
                        style: TextStyle(color: klighttextcolor, fontSize: 20),
                      );
                    }),
                    Text("Begin Check out now",
                        style: TextStyle(color: klighttextcolor, fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: klighttextcolor,
                    )
                  ],
                ))
          ],
        ));
  }
}
