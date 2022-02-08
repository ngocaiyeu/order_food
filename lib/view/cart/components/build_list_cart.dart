import 'package:flutter/material.dart';
import 'detail/item_list_cart.dart';

class BuildListCart extends StatefulWidget {
  const BuildListCart({Key? key}) : super(key: key);

  @override
  _BuildListCartState createState() => _BuildListCartState();
}

class _BuildListCartState extends State<BuildListCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 30),
      height: MediaQuery.of(context).size.height * 0.6,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return const ItemListCart();
          }),
    );
  }
}
