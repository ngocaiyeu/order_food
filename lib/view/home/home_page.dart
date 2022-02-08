import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/widget_per_home_frame.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WidgetPerFrame(seachController: searchController),
    );
  }
}
