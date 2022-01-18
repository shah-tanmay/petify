import 'package:flutter/material.dart';

class PetGroups extends StatelessWidget {
  final ImageProvider image;
  final String text;
  const PetGroups({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: image,
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
