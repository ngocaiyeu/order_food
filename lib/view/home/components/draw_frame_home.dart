import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawFrameHome extends StatelessWidget {
  const DrawFrameHome({
    Key? key,
    required this.searchWidget,
    required this.textWidget,
    required this.addressWidget,
    required this.tabWidget,
    required this.listWidget,
  }) : super(key: key);

  // search widget component
  final Widget searchWidget;
  // text first widget component
  final Widget textWidget;
  // text address widget component
  final Widget addressWidget;
  // tab list widget component
  final Widget tabWidget;
  // list view widget component
  final Widget listWidget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // position of search bar
        Positioned(
            top: MediaQuery.of(context).size.height * 0.065,
            left: MediaQuery.of(context).size.width * 0.064,
            child: searchWidget),
        // position of text first
        Positioned(
            top: MediaQuery.of(context).size.height * 0.135,
            left: MediaQuery.of(context).size.width * 0.072,
            child: textWidget),
        // position of text address
        Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: MediaQuery.of(context).size.width * 0.072,
            child: addressWidget),
        // position of tab view
        Positioned(
            top: MediaQuery.of(context).size.height * 0.23,
            left: MediaQuery.of(context).size.width * 0.064,
            child: tabWidget),
        // position of list view
        Positioned(
            top: MediaQuery.of(context).size.height * 0.64,
            left: MediaQuery.of(context).size.width * 0.064,
            child: listWidget),
      ],
    );
  }
}
