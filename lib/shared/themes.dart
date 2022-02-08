import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static final TextStyle textLogin = GoogleFonts.roboto(
      fontSize: 22, fontWeight: FontWeight.w800, color: Colors.black);
  static final TextStyle textLoginWelcome = GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.normal, color: const Color.fromRGBO(104, 104, 104, 1));
  static final TextStyle textLoginForgot = GoogleFonts.roboto(
      fontSize: 12, fontWeight: FontWeight.normal, color: const Color.fromRGBO(104, 104, 104, 1));
  static final TextStyle textLoginButton = GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  static final TextStyle textHomeDeliveryTo = GoogleFonts.roboto(
      fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromRGBO(255, 107, 67, 10));
}
