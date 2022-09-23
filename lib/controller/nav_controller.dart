import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavController extends GetxController {
  void navbar(int? i, int x) {
    x = i!;
    update();
  }
}
