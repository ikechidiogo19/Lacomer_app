import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/food_model.dart';

class StateController extends GetxController {
  increment(Food food) {
    food.quantity.value++;
  }

  decrement(Food food) {
    if (food.quantity.value > 1) {
      food.quantity.value--;
    } else {
      Get.snackbar("Quantity", "Cannot be less than Zero",
          icon: const Icon(
            Icons.alarm,
          ),
          duration: const Duration(seconds: 2));
    }
  }

  double addprice(Food food) {
    return food.price * food.quantity.value;
  }
}
