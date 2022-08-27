import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavController extends GetxController {
  var selectedindex = 0.obs;

  void navbar(Int i) {
    selectedindex.value = i as int;
    update();
  }
}
