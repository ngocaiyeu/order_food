import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:order_fast_food/modules/router/app_router.dart';

class HomeController extends GetxController {
  // class allows you to authenticate Google users.
  late GoogleSignIn googleSignIn;
  // check login
  var isSignIn = false.obs;
  // instance Firebase Auth
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  // ignore: unnecessary_overrides
  Future<void> onReady() async {
    googleSignIn = GoogleSignIn();
    ever(isSignIn, handleAuthStateChanged);
    isSignIn.value = firebaseAuth.currentUser != null;
    firebaseAuth.authStateChanges().listen((event) {
      isSignIn.value = event != null;
    });
    super.onReady();
  }

  void handleAuthStateChanged(isSignIn) {
    if (isSignIn) {
      Get.offAllNamed(AppRouters.home, arguments: firebaseAuth.currentUser);
    }
  }
}
