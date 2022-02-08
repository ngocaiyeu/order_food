import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.prefixIconData,
    required this.controller,
  }) : super(key: key);

  // text hint of textfield
  final String hintText;
  // right icon data of textfield
  final IconData prefixIconData;
  // controller of textfield
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 10),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(166, 163, 184, 1)),
        prefixIcon: Icon(
          prefixIconData,
          color: const Color.fromRGBO(166, 163, 184, 1),
          size: 20,
        ),
        fillColor: const Color.fromRGBO(245, 245, 248, 1),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                const BorderSide(color: Color.fromRGBO(228, 228, 228, 100))),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(255, 107, 67, 10), width: 2),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
