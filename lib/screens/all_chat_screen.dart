import 'package:flutter/material.dart';
import 'package:petify/components/chat_card.dart';
import 'package:petify/constants.dart';

class AllChatScreen extends StatefulWidget {
  const AllChatScreen({Key? key}) : super(key: key);

  @override
  _AllChatScreenState createState() => _AllChatScreenState();
}

class _AllChatScreenState extends State<AllChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              color: kPrimaryColor,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chats',
                          style: TextStyle(fontSize: 36, color: kPrimaryWhite),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: kPrimaryWhite,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Icon(Icons.search,
                                  color: kPrimaryColor, size: 30),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: kPrimaryWhite,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Icon(Icons.more_vert,
                                  color: kPrimaryColor, size: 30),
                            ),
                          ],
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 30, bottom: 7, top: 7, right: 20),
                          decoration: const BoxDecoration(
                            color: kPrimaryWhite,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          child: const Text(
                            "Messages",
                            style:
                                TextStyle(color: kPrimaryColor, fontSize: 24),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 30, bottom: 5, top: 5, right: 30),
                          decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryWhite, width: 2),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: const Text(
                            "Calls",
                            style:
                                TextStyle(color: kPrimaryWhite, fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: const [
                ChatCard(
                  image: Image(
                    image: AssetImage('images/matt.png'),
                  ),
                  name: "Matt Louise",
                  lastChat: "Lmao XD",
                  time: "3:34pm",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/lisa.png'),
                  ),
                  name: "Lisa Lane",
                  lastChat: "See you at the park",
                  time: "2:23pm",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/sara.png'),
                  ),
                  name: "Sara Park",
                  lastChat: "Cool ttyl",
                  time: "1:20pm",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/julie.png'),
                  ),
                  name: "Julie Will",
                  lastChat: "Hahhaaaa lol",
                  time: "11:54am",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/sam.png'),
                  ),
                  name: "Sam Hogan",
                  lastChat: "Yup, my kitty tore my sofa",
                  time: "11:33am",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/kristy.png'),
                  ),
                  name: "Kristy Adams",
                  lastChat: "Byee, see ya",
                  time: "9:14am",
                ),
                ChatCard(
                  image: Image(
                    image: AssetImage('images/ralph.png'),
                  ),
                  name: "Ralph James",
                  lastChat: "Yeah",
                  time: "8:25am",
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
