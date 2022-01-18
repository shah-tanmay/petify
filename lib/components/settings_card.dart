import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class SettingsCard extends StatelessWidget {
  final Icon icon;
  final String name;
  final bool isRed;
  const SettingsCard({
    Key? key,
    required this.icon,
    required this.name,
    this.isRed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        elevation: 2,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(children: [
            icon,
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: isRed ? kLikedColor : Colors.black87),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
