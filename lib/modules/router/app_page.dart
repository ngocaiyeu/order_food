import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:order_fast_food/common/logout_widget.dart';
import 'package:order_fast_food/modules/bindings/home_binding.dart';
import 'package:order_fast_food/modules/bindings/login_binding.dart';
import 'package:order_fast_food/modules/bindings/logout_binding.dart';
import 'package:order_fast_food/view/cart/cart_page.dart';
import 'package:order_fast_food/view/cart/check_out.dart';
import 'package:order_fast_food/view/login/login_page.dart';
import 'package:order_fast_food/view/main/home_main.dart';
import 'package:order_fast_food/view/product/product_view_page.dart';
import 'package:order_fast_food/view/profile/profile_page.dart';

import 'app_router.dart';

class AppPages {
  static var listPage = [
    GetPage(
        name: AppRouters.login,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
      name: AppRouters.home,
      page: () => const HomeMain(),
      binding: HomeBiding(),
    ),
    GetPage(
      name: AppRouters.logout,
      page: () => const LogOutHandler(),
      binding: LogoutBinding(),
    ),
    GetPage(
      name: AppRouters.product,
      page: () => const ProductViewPage(),
    ),
    GetPage(
      name: AppRouters.cart,
      page: () => const CartPage(),
    ),
    GetPage(
      name: AppRouters.checkOut,
      page: () => const CheckOutPage(),
    ),
    GetPage(
      name: AppRouters.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
