import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:order_fast_food/common/custom_fullscreen_dialog.dart';
import 'package:get/get.dart';
import 'package:order_fast_food/modules/controller/home_controller.dart';

class LoginController {
  HomeController homeController = Get.find<HomeController>();

  void loginGoogle() async {
    CustomFullScreenDialog.showDialog();
    GoogleSignInAccount? googleSignInAccount =
        await homeController.googleSignIn.signIn();
    if (googleSignInAccount == null) {
      CustomFullScreenDialog.cancelDialog();
    }
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);
    await homeController.firebaseAuth.signInWithCredential(oAuthCredential);
    CustomFullScreenDialog.cancelDialog();
  }

  void loginEmail(BuildContext context, String email, String password) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await homeController.firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Get.back();
      Get.snackbar("Đăng nhập thất bại", e.message.toString());
    }
  }

  void loginFacebook() async {
    LoginResult loginResult = await FacebookAuth.instance.login();
    switch (loginResult.status) {
      case LoginStatus.success:
        {
          final AuthCredential facebookCredential =
              FacebookAuthProvider.credential(loginResult.accessToken!.token);
          await homeController.firebaseAuth
              .signInWithCredential(facebookCredential);
          break;
        }
      case LoginStatus.failed:
        {
          break;
        }
      case LoginStatus.cancelled:
        {
          break;
        }
      case LoginStatus.operationInProgress:
        break;
    }
  }
}
