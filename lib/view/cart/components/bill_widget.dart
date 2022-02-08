import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BillWidget extends StatefulWidget {
  const BillWidget({Key? key}) : super(key: key);

  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, -1), //(x,y)
            blurRadius: 5,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1))),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.12,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textIntoMoney("Subtotal", "\$63.96", 16),
                const SizedBox(height: 5),
                textIntoMoney("Shipping fee", "\$0.00", 16),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height * 0.16,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textIntoMoney("Subtotal", "\$63.96", 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(255, 107, 67, 10),
                        onPrimary: Colors.white,
                        fixedSize: Size(MediaQuery.of(context).size.width, 50)),
                    onPressed: () {},
                    child: const Text(
                      "Place your Order",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row textIntoMoney(String text, String price, double textsize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        Text(price,
            style: TextStyle(fontSize: textsize, fontWeight: FontWeight.bold))
      ],
    );
  }
}
