import 'package:flutter/material.dart';
import 'package:petify/components/login_screen_pills.dart';
import 'package:petify/components/login_screen_top_bar.dart';
import 'package:petify/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Column(
          children: [
            const LoginScreenTopBar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginScreenPills(text: "Pet's Rescued", number: "526"),
                  LoginScreenPills(text: "Pet's Adopted", number: "174"),
                  LoginScreenPills(text: "Shelter Home", number: "350"),
                ],
              ),
            ),
            const Text(
              "Your nearby shelter home",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 10),
                child: Image(
                  image: AssetImage('images/map.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
