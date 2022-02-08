import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row RowRateWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 107, 67, 10),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  style: TextStyle(color: Colors.white),
                  text: "4.5",
                ),
              ],
            ),
          ),
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                CupertinoIcons.clock,
                size: 20,
              ),
            ),
            TextSpan(
              style: TextStyle(color: Colors.black),
              text: "30 Mins",
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Icon(
                Icons.attach_money,
                size: 20,
              ),
            ),
            TextSpan(
              style: TextStyle(color: Colors.black),
              text: "Free Shipping",
            ),
          ],
        ),
      ),
    ],
  );
}
