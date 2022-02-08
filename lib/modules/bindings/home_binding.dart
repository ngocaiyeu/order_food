import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:order_fast_food/modules/controller/product_controller.dart';
class HomeBiding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductController>(ProductController());
  }
}