import 'package:get/get.dart';
import 'package:order_fast_food/modules/controller/home_controller.dart';

class LogOutController extends GetxController {
  HomeController homeController = Get.find<HomeController>();
  @override
  void onInit() async {
    super.onInit();
    logout();
  }

  Future<void> logout() async {
    try {
      await homeController.googleSignIn.disconnect();
      await homeController.firebaseAuth.signOut();
    } catch (_) {
      try {
        await homeController.firebaseAuth.signOut();
      } catch (_) {
      }
    }
  }
}
