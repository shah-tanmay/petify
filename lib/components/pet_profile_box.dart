import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class PetProfileBox extends StatelessWidget {
  final String title;
  final String subTitle;
  const PetProfileBox({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryWhite,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryWhite,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        )
      ],
    );
  }
}
