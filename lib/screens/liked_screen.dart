import 'package:flutter/material.dart';
import 'package:petify/components/pet_card.dart';
import 'package:petify/constants.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  _LikedScreenState createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, left: 15, bottom: 20),
              color: kPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "WishList",
                    style: TextStyle(fontSize: 40, color: kPrimaryWhite),
                  ),
                  Text(
                    "Your Future Pet",
                    style: TextStyle(fontSize: 24, color: kPrimaryWhite),
                  ),
                ],
              ),
            ),
            PetCard(
              image: const Image(
                image: AssetImage('images/jerry.png'),
              ),
              name: "Jerry",
              location: "New Jersy",
              away: "3",
              age: "2y 3m",
              isLiked: true,
            ),
          ],
        ),
      ),
    );
  }
}
