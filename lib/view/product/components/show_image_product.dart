import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/shared/themes.dart';

class ShowImageProduct extends StatefulWidget {
  const ShowImageProduct({Key? key}) : super(key: key);

  @override
  _ShowImageProductState createState() => _ShowImageProductState();
}

class _ShowImageProductState extends State<ShowImageProduct> {
  // check is favorite
  bool isfavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(245, 245, 248, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: Image.asset(
                "assets/images/product.png",
                fit: BoxFit.contain,
              )),
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
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
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
        ],
      ),
    );
  }
}
