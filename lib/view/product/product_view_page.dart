import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_fast_food/modules/models/product_models.dart';
import 'components/bottom_sheet_widget.dart';
import 'components/listview_person_rate.dart';
import 'components/row_choose_size_product.dart';
import 'components/row_rate_widget.dart';
import 'components/show_image_product.dart';
import 'components/app_bar_widget.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({Key? key}) : super(key: key);

  @override
  _ProductViewPageState createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  ProductModel product = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      bottomSheet: const BottomSheetWidget(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ShowImageProduct(),
                    const SizedBox(height: 30),
                    Text(
                      "${product.name}",
                      style:
                          const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${product.detail}",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 25),
                    RowRateWidget(),
                    const SizedBox(height: 25),
                    const RowChooseSizeProduct(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const PersonRating(),
            ],
          ),
        ),
      ),
    );
  }
}
