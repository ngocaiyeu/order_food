import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_fast_food/modules/models/product_models.dart';
import 'package:order_fast_food/modules/router/app_router.dart';
import 'package:order_fast_food/modules/service/product.dart';
import 'details/item_list_tabbar.dart';

class ListTabBar extends StatefulWidget {
  const ListTabBar({Key? key}) : super(key: key);

  @override
  _ListTabBarState createState() => _ListTabBarState();
}

class _ListTabBarState extends State<ListTabBar> {
  late List<ProductModel> listProduct;
  // index of tab
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Tabview
        DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // button on tab
              ButtonsTabBar(
                onTap: (p0) {
                  setState(() {
                    index = p0;
                  });
                },
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 107, 67, 10),
                ),
                tabs: <Widget>[
                  Tab(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                "assets/images/fastfood_icon.png",
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(width: 5),
                          Align(
                              child: Text(
                            "Fast Food",
                            style: TextStyle(
                                color:
                                    (index == 0) ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                "assets/images/fruit_icon.png",
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(width: 5),
                          Align(
                              child: Text(
                            "Fruit",
                            style: TextStyle(
                                color:
                                    (index == 1) ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10),
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                "assets/images/vegetable_icon.png",
                                fit: BoxFit.cover,
                              )),
                          const SizedBox(width: 5),
                          Align(
                              child: Text(
                            "Vegetable",
                            style: TextStyle(
                                color:
                                    (index == 2) ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              // Detail of each tab
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: TabBarView(children: <Widget>[
                    StreamBuilder<List<ProductModel>>(
                        stream: ProductDatabase().readProduct(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            listProduct = snapshot.data!;
                            return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: listProduct.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                    onTap: () {
                                      Get.toNamed(AppRouters.product,
                                          arguments: listProduct[index]);
                                    },
                                    child: ItemListTabBar(listProduct[index]));
                              },
                            );
                          } else {
                            print("a");
                            return Container();
                          }
                        }),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ]))
            ],
          ),
        )
      ],
    );
  }
}
