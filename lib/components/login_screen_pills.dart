import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class LoginScreenPills extends StatelessWidget {
  final String text;
  final String number;
  LoginScreenPills({required this.text, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration:
              const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
          child: Text(
            number,
            style: const TextStyle(fontSize: 20, color: kPrimaryWhite),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: SizedBox(
            width: 100,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ],
    );
  }
}
