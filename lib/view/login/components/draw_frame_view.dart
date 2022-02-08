import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawFrameView extends StatelessWidget {
  const DrawFrameView({
    Key? key,
    required this.widgetLogo,
    required this.widgetGreeting,
    required this.widgetEmail,
    required this.widgetPassword,
    required this.widgetForgot,
    required this.widgetButton,
    required this.widgetHave,
    required this.widgetFb,
    required this.widgetGg,
  }) : super(key: key);

  // Logo widget component
  final Widget widgetLogo;
  // text greeting widget component
  final Widget widgetGreeting;
  // input email widget component
  final Widget widgetEmail;
  // input password widget component
  final Widget widgetPassword;
  // text button widget forgot component
  final Widget widgetForgot;
  // button login widget component
  final Widget widgetButton;
  // text button switch screen sign up widget component
  final Widget widgetHave;
  // button login with fb widget component
  final Widget widgetFb;
  // button login with gg widget component
  final Widget widgetGg;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // position of logo
        Positioned(
            top: MediaQuery.of(context).size.height * 0.067,
            left: MediaQuery.of(context).size.width * 0.29,
            child: widgetLogo),
        // position of greeting
        Positioned(
            top: MediaQuery.of(context).size.height * 0.272,
            left: MediaQuery.of(context).size.width * 0.212,
            child: widgetGreeting),
        // position of input email
        Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: MediaQuery.of(context).size.width * 0.065,
            child: widgetEmail),
        // position of input password
        Positioned(
            top: MediaQuery.of(context).size.height * 0.485,
            left: MediaQuery.of(context).size.width * 0.065,
            child: widgetPassword),
        // position of text button forgot password
        Positioned(
            top: MediaQuery.of(context).size.height * 0.56,
            left: MediaQuery.of(context).size.width * 0.615,
            child: widgetForgot),
        // poisiton of button login
        Positioned(
            top: MediaQuery.of(context).size.height * 0.61,
            left: MediaQuery.of(context).size.width * 0.065,
            child: widgetButton),
        // position of text button switch screen
        Positioned(
            top: MediaQuery.of(context).size.height * 0.685,
            left: MediaQuery.of(context).size.width * 0.225,
            child: widgetHave),
        // position of button login with fb
        Positioned(
            top: MediaQuery.of(context).size.height * 0.83,
            left: MediaQuery.of(context).size.width * 0.065,
            child: widgetFb),
        // position of button login with gg
        Positioned(
            top: MediaQuery.of(context).size.height * 0.91,
            left: MediaQuery.of(context).size.width * 0.065,
            child: widgetGg),
      ],
    );
  }
}
