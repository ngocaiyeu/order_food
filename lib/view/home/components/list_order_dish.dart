import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/view/home/components/details/item_list_order_dish.dart';

class ListOrderDish extends StatelessWidget {
  const ListOrderDish({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Các món khác",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "Tất cả",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 107, 67, 10)),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ItemListOrderDish();
            },
          ),
        ),
      ],
    );
  }
}
