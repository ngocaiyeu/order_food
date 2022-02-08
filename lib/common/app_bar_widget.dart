import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildAppBarCart(String text) {
  return AppBar(
      centerTitle: true,
      title: Text(
        text,
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      toolbarHeight: 40,
      leadingWidth: 65,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(bottom: 2),
              primary: Colors.transparent,
              onPrimary: Colors.grey,
              elevation: 0,
              side: const BorderSide(width: 1, color: Colors.grey)),
          onPressed: () {
            Get.back();
          },
          child: const Icon(CupertinoIcons.arrow_left),
        ),
      ));
}
