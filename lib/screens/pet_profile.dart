import 'package:flutter/material.dart';
import 'package:petify/components/pet_profile_box.dart';
import 'package:petify/constants.dart';

class PetProfile extends StatefulWidget {
  static const String id = 'pet_profile';
  const PetProfile({Key? key}) : super(key: key);

  @override
  _PetProfileState createState() => _PetProfileState();
}

class _PetProfileState extends State<PetProfile> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    final String name = arguments["name"];
    final Image image = arguments['image'];
    final String location = arguments["location"];
    final String away = arguments["away"];
    final bool isLiked = arguments["isLiked"];
    final String age = arguments["age"];
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: kPrimaryWhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: const Icon(Icons.arrow_back,
                                color: kPrimaryColor),
                          ),
                        ),
                      ),
                      Center(child: image),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 3.0),
                          child: Text(
                            "German Sepherd",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3.0),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on,
                                  color: kPrimaryColor, size: 15),
                              Text(
                                "$location, ($away km)",
                                style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.favorite,
                        color: isLiked ? kLikedColor : kPrimaryWhite),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PetProfileBox(title: age, subTitle: "Age"),
                      const PetProfileBox(title: "2.7kg", subTitle: "Weight"),
                      const PetProfileBox(title: "Sex", subTitle: "M")
                    ]),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Image(
                                image: AssetImage('images/matt.png'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Matt Louise",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("9868547823"),
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: kPrimaryColor,
                                ),
                                child: const Icon(
                                  Icons.chat,
                                  color: kPrimaryWhite,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  color: kPrimaryColor,
                                ),
                                child: const Icon(Icons.call,
                                    color: kPrimaryWhite),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Text(
                          "Hi, I found Jerry 2 years ago and since then he is living with me . But now i am posted to a new city and and i dont want to bother Jerry. Trying to find a nice partner for him.",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 15),
                child: Text(
                  "More Images",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Image(
                        image: AssetImage('images/jerry1.png'),
                      ),
                      Image(
                        image: AssetImage('images/jerry2.png'),
                      ),
                      Image(
                        image: AssetImage('images/jerry1.png'),
                      ),
                      Image(
                        image: AssetImage('images/jerry2.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
