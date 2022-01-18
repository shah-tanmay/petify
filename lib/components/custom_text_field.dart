import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final bool isNumber;
  CustomTextField(
      {required this.hintText,
      required this.prefixIcon,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        keyboardType: isNumber ? TextInputType.number : TextInputType.multiline,
        textAlign: TextAlign.left,
        decoration: kTextFieldDecoration.copyWith(
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
