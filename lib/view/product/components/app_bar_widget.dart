import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
      centerTitle: true,
      title: const Text(
        "DETAIL",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      toolbarHeight: 40,
      leadingWidth: 65,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        Container(
          width: 65,
          padding: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(bottom: 2.5, right: 2.5),
                  elevation: 0,
                  primary: Colors.transparent,
                  onPrimary: Colors.grey,
                  side: const BorderSide(width: 1, color: Colors.grey)),
              onPressed: () {},
              child: const Icon(CupertinoIcons.cart)),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.only(bottom: 2),
              primary: Colors.transparent,
              onPrimary: Colors.grey,
              elevation: 0,
              side: const BorderSide(width: 1, color: Colors.grey)),
          onPressed: () {},
          child: const Icon(CupertinoIcons.arrow_left),
        ),
      ));
}
