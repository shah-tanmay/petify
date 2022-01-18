import 'package:flutter/material.dart';
import 'package:petify/components/button.dart';
import 'package:petify/constants.dart';
import 'package:petify/screens/namenumber_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Hero(
                  tag: "welcomeimage",
                  child: Image(
                      image: AssetImage('images/Logo.png'),
                      height: 170,
                      width: 120),
                ),
                const Text(
                  "Welcome to Petify",
                  style: kWelcomeScreenTextStyle,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Image(
                    image: AssetImage('images/welcomescreen.png'),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Button(
                    text: "Let's Adopt",
                    onPress: () {
                      Navigator.pushNamed(context, NameNumberScreen.id);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
