import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/modules/models/product_models.dart';
import 'package:order_fast_food/shared/themes.dart';

class ItemListTabBar extends StatefulWidget {
  ItemListTabBar(this.product, {Key? key}) : super(key: key);
  ProductModel product = ProductModel();

  @override
  _ItemListTabBarState createState() => _ItemListTabBarState();
}

class _ItemListTabBarState extends State<ItemListTabBar> {
  // check item favorite
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(245, 245, 248, 1),
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.only(left: 5),
        height: double.infinity,
        width: MediaQuery.of(context).size.width * 0.4,
        child: buildItemDetail(context));
  }

  Column buildItemDetail(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/images/fire_icon.png",
                        fit: BoxFit.cover)),
                Text(
                  "Calories",
                  style: MyTheme.textLoginForgot,
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    isfavorite = !isfavorite;
                  });
                },
                icon: Icon(
                  isfavorite ? Icons.favorite : Icons.favorite_border,
                  color: isfavorite ? Colors.red : Colors.black,
                ))
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.13,
          padding: const EdgeInsets.only(left: 10, right: 15, bottom: 15),
          child: Image.asset(
            "assets/images/food.png",
            fit: BoxFit.contain,
          ),
        ),
        Text(
          "${widget.product.name}",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          "${widget.product.description}",
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "\$${widget.product.price}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
