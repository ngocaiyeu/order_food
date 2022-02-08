import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonHandler {
  // handler login button
  Future signUp(BuildContext context, String email, String password) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      Get.toNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.back();
      Get.snackbar("Đăng kí thất bại", e.message.toString());
    }
  }

  Future signIn(BuildContext context, String email, String password) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = FirebaseAuth.instance.currentUser!;
      print(user.uid);
      Get.offAllNamed('/home');
    } on FirebaseAuthException catch (e) {
      Get.back();
      Get.snackbar("Đăng nhập thất bại", e.message.toString());
    }
  }
}
