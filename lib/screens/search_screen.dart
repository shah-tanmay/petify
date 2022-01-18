import 'package:flutter/material.dart';
import 'package:petify/components/pet_card.dart';
import 'package:petify/components/pet_group.dart';
import 'package:petify/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              color: kPrimaryColor,
              child: Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: TextField(
                      decoration: kSearchScreenInputDecoration,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PetGroups(
                          text: "Dog",
                          image: AssetImage('images/dog.png'),
                        ),
                        PetGroups(
                          text: "Cat",
                          image: AssetImage('images/cat.png'),
                        ),
                        PetGroups(
                          text: "Bird",
                          image: AssetImage('images/bird.png'),
                        ),
                        PetGroups(
                          text: "Fish",
                          image: AssetImage('images/fish.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  PetCard(
                    image: const Image(
                      image: AssetImage('images/jerry.png'),
                    ),
                    name: "Jerry",
                    location: "New Jersy",
                    away: "3",
                    age: "2y 3m",
                    isLiked: false,
                  ),
                  PetCard(
                    image: const Image(
                      image: AssetImage('images/jack.png'),
                    ),
                    name: "Jack",
                    location: "Ohio",
                    away: "5",
                    age: "5y 8m",
                    isLiked: false,
                  ),
                  PetCard(
                    image: const Image(
                      image: AssetImage('images/kent.png'),
                    ),
                    name: "Kent",
                    location: "MidTown",
                    away: "6",
                    age: "3y 6m",
                    isLiked: false,
                  ),
                  PetCard(
                    image: const Image(
                      image: AssetImage('images/paul.png'),
                    ),
                    name: "Paul",
                    location: "New York",
                    away: "8",
                    age: "5y 11m",
                    isLiked: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
