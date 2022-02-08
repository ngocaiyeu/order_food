import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:order_fast_food/modules/controller/home_controller.dart';
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put(LoginBinding());
  }
}