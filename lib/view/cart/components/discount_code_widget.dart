import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscountCodeWidget extends StatefulWidget {
  const DiscountCodeWidget({Key? key}) : super(key: key);

  @override
  _DiscountCodeWidgetState createState() => _DiscountCodeWidgetState();
}

class _DiscountCodeWidgetState extends State<DiscountCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add Coupon",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 10, top: 10, bottom: 10, right: 60),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 245, 248, 1),
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 1, color: const Color(0xFFE0E0E0))),
                height: 60,
                child: const SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Coupon Code"),
                  ),
                ),
              ),
              Positioned(
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Color.fromRGBO(255, 107, 67, 10)),
                    height: 60,
                    width: 60,
                    child: const Icon(
                      Icons.confirmation_num_outlined,
                      color: Colors.white,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
