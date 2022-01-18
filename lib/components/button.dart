import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  Button({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
      child: Material(
        elevation: 6.0,
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(36),
        child: MaterialButton(
          onPressed: onPress,
          height: 42,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: null,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Center(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
