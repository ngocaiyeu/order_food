import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogOutHandler extends StatefulWidget {
  const LogOutHandler({Key? key}) : super(key: key);

  @override
  _LogOutHandlerState createState() => _LogOutHandlerState();
}

class _LogOutHandlerState extends State<LogOutHandler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
