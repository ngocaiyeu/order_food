import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:order_fast_food/modules/controller/login_controller.dart';
import 'package:order_fast_food/shared/themes.dart';
import 'package:order_fast_food/modules/controller/button_login_handler.dart';
import 'package:order_fast_food/view/login/components/textfield_widget.dart';
import 'draw_frame_view.dart';

class WidgetPerFrame extends StatefulWidget {
  const WidgetPerFrame({Key? key}) : super(key: key);
  @override
  _WidgetPerFrameState createState() => _WidgetPerFrameState();
}

class _WidgetPerFrameState extends State<WidgetPerFrame> {
// controller of email input
  final emailController = TextEditingController();
  // controller of password input
  final passwordlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DrawFrameView(
      // detail widget of logo
      widgetLogo: SvgPicture.asset(
        "assets/images/logo.svg",
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.42,
      ),
      widgetGreeting: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.576,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Let's Sign You In", style: MyTheme.textLogin),
            Text("Welcome back, you've been missed!",
                style: MyTheme.textLoginWelcome)
          ],
        ),
      ),
      // detail widget of mail input
      widgetEmail: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.87,
        child: TextFieldWidget(
            controller: emailController,
            hintText: "Email",
            prefixIconData: CupertinoIcons.mail),
      ),
      // detail widget of password input
      widgetPassword: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.87,
        child: TextFieldWidget(
            controller: passwordlController,
            hintText: "Password",
            prefixIconData: Icons.lock),
      ),
      // detail widget of text button forgot password
      widgetForgot: SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.32,
        child: TextButton(
          style: TextButton.styleFrom(
              alignment: Alignment.centerLeft, elevation: 0),
          onPressed: () {},
          child: Text(
            "Forgot Password?",
            style: MyTheme.textLoginForgot,
          ),
        ),
      ),
      // detail widget of button login
      widgetButton: ElevatedButton(
        onPressed: () {
          LoginController().loginEmail(context, emailController.text.trim(),
              passwordlController.text.trim());
        },
        style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(255, 107, 67, 10),
            fixedSize: Size(MediaQuery.of(context).size.width * 0.87,
                MediaQuery.of(context).size.height * 0.062)),
        child: Text(
          "Sign In",
          style: MyTheme.textLoginButton,
        ),
      ),
      // detail widget of text button switch screen sign up
      widgetHave: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?", style: MyTheme.textLoginWelcome),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Color.fromRGBO(255, 107, 67, 10)),
                ))
          ],
        ),
      ),
      // detail widget of button login with fb
      widgetFb: ElevatedButton.icon(
        icon: SvgPicture.asset("assets/images/fb_logo.svg"),
        label: const Text("Continue with Facebook"),
        onPressed: () {
          LoginController().loginFacebook();
        },
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.blue[900],
            fixedSize: Size(MediaQuery.of(context).size.width * 0.87,
                MediaQuery.of(context).size.height * 0.062)),
      ),
      // detail widget of button with gg
      widgetGg: ElevatedButton.icon(
        icon: SizedBox(
            width: 16,
            height: 16,
            child: Image.asset(
              "assets/images/gg_icon.png",
              fit: BoxFit.cover,
            )),
        label: const Text("Continue with Google"),
        onPressed: () {
          setState(() {
            LoginController().loginGoogle();
          });
        },
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.black,
            elevation: 0,
            primary: Colors.grey[200],
            fixedSize: Size(MediaQuery.of(context).size.width * 0.87,
                MediaQuery.of(context).size.height * 0.062)),
      ),
    );
  }
}
