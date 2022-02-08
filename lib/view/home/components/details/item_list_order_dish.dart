import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/shared/themes.dart';

class ItemListOrderDish extends StatefulWidget {
  const ItemListOrderDish({Key? key}) : super(key: key);

  @override
  _ItemListOrderDishState createState() => _ItemListOrderDishState();
}

class _ItemListOrderDishState extends State<ItemListOrderDish> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 245, 248, 1),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.42,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.asset(
              "assets/images/other_food.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.36,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      // const SizedBox(width: 1),
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/images/fire_other_icon.png",
                            fit: BoxFit.cover,
                          )),
                      Text("Calories", style: MyTheme.textLoginForgot)
                    ],
                  ),
                ),
                const Text(
                  "Wrap Sandwich",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Grilled vegetabales sandwich",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "\$15.99",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
