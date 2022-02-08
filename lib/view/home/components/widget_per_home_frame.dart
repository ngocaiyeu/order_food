import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_fast_food/shared/themes.dart';
import 'package:order_fast_food/view/login/components/textfield_widget.dart';
import 'draw_frame_home.dart';
import 'list_order_dish.dart';
import 'list_tabbar.dart';

class WidgetPerFrame extends StatelessWidget {
  const WidgetPerFrame({
    Key? key,
    required this.seachController,
  }) : super(key: key);

  // controller of search input
  final TextEditingController seachController;

  @override
  Widget build(BuildContext context) {
    return DrawFrameHome(
      // detail widget of search input
      searchWidget: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.872,
        child: TextFieldWidget(
            controller: seachController,
            hintText: "Search",
            prefixIconData: CupertinoIcons.search),
      ),
      // detail widget of text first
      textWidget: SizedBox(
        height: MediaQuery.of(context).size.height * 0.045,
        width: MediaQuery.of(context).size.width * 0.35,
        child: Center(
            child: Text(
          "Giao hàng đến",
          style: MyTheme.textHomeDeliveryTo,
        )),
      ),
      // detail widget of text address
      addressWidget: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.035,
        width: MediaQuery.of(context).size.width * 0.65,
      ),
      // detail widget of tab bar view
      tabWidget: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.38,
        width: MediaQuery.of(context).size.width * 0.936,
        child: const ListTabBar(),
      ),
      // detail widget of list view
      listWidget: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width * 0.936,
        child: ListOrderDish(),
      ),
    );
  }
}
