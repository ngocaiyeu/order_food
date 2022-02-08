import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/common/app_bar_widget.dart';
import 'package:order_fast_food/view/cart/components/bill_widget.dart';

import 'components/detail/delivery_address_widget.dart';
import 'components/discount_code_widget.dart';
import 'components/payment_methods.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppBarCart("CHECKOUT"),
      body: SafeArea(
        child: Column(
          children: const [
            PaymentMethods(),
            DeliveryAddressWidget(),
            DiscountCodeWidget(),
            BillWidget()
          ],
        ),
      ),
    );
  }
}
