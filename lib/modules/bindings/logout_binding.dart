import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:order_fast_food/modules/controller/home_controller.dart';
import 'package:order_fast_food/modules/controller/logout_controller.dart';

class LogoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<LogOutController>(LogOutController());
  }
}