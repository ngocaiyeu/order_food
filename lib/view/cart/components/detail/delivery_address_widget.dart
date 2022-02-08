import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryAddressWidget extends StatefulWidget {
  const DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  _DeliveryAddressWidgetState createState() => _DeliveryAddressWidgetState();
}

class _DeliveryAddressWidgetState extends State<DeliveryAddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
      // color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivery Address",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 245, 248, 1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: const Color(0xFFE0E0E0))),
            height: 60,
            width: double.infinity,
            child: Row(
              children: const [
                SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(Icons.location_searching)),
                SizedBox(width: 10),
                Text(
                  "300 Post Street San Francisco, CA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
