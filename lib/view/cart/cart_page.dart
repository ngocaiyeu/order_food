import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/common/app_bar_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'components/bill_widget.dart';
import 'components/build_list_cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: buildAppBarCart("CART"),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            BuildListCart(),
            BillWidget(),
          ],
        ),
      ),
    );
  }
}
