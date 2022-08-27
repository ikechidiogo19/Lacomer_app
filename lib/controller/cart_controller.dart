import 'package:get/get.dart';
import 'package:lacomer_app/model/food_model.dart';

class CartController extends GetxController {
  var cartitems = <Food>[].obs;
  double get totalprice => cartitems.fold(
      0,
      (previousValue, element) =>
          previousValue + (element.price * element.quantity.value));
  int get count => cartitems.length;

  void addtocart(Food items) {
    if (cartitems.contains(items)) {
      Get.snackbar("Snacks", "${items.name} already exists");
    } else {
      cartitems.add(items);
      Get.snackbar("Snacks Added", "You have added ${items.name} to the cart",
          barBlur: 20, duration: const Duration(seconds: 2));
    }
  }

  void removetocart(Food item) {
    cartitems.remove(item);
  }
}
