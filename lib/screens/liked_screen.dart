import 'package:flutter/material.dart';
import 'package:petify/components/pet_card.dart';
import 'package:petify/constants.dart';
import 'package:petify/notifier/liked_notifier.dart';
import 'package:provider/provider.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({Key? key}) : super(key: key);

  @override
  _LikedScreenState createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  @override
  Widget build(BuildContext context) {
    LikedNotifier likedNotifier = Provider.of<LikedNotifier>(context);
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
            likedNotifier.petCardList.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: likedNotifier.petCardList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Consumer<LikedNotifier>(
                        builder: (context, notifier, children) => PetCard(
                          image: notifier.petCardList[index].image,
                          name: notifier.petCardList[index].name,
                          location: notifier.petCardList[index].location,
                          away: notifier.petCardList[index].away,
                          age: notifier.petCardList[index].age,
                          isLiked: notifier.petCardList[index].isLiked,
                        ),
                      ),
                    ),
                  )
                : const Expanded(
                    child: Center(
                      child: Text(
                        "Your List of Favorites is Empty",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: kPrimaryColor),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

// PetCard(
//               image: const Image(
//                 image: AssetImage('images/jerry.png'),
//               ),
//               name: "Jerry",
//               location: "New Jersy",
//               away: "3",
//               age: "2y 3m",
//               isLiked: true,
//             ),