import 'package:flutter/material.dart';
import 'package:petify/constants.dart';

class LoginScreenTopBar extends StatelessWidget {
  const LoginScreenTopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('images/profile.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 24,
                      color: kPrimaryWhite,
                      fontWeight: FontWeight.w200),
                ),
                const Text(
                  "Emma Jones",
                  style: TextStyle(
                    fontSize: 35,
                    color: kPrimaryWhite,
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.location_on, color: kPrimaryWhite),
                    Text(
                      "New York, USA",
                      style: TextStyle(
                          fontSize: 18,
                          color: kPrimaryWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
