import 'package:flutter/material.dart';
import 'package:petify/components/button.dart';
import 'package:petify/components/custom_text_field.dart';
import 'package:petify/constants.dart';
import 'package:petify/screens/otp_screen.dart';

class NameNumberScreen extends StatefulWidget {
  static const String id = 'namenumber_screen';
  const NameNumberScreen({Key? key}) : super(key: key);

  @override
  _NameNumberScreenState createState() => _NameNumberScreenState();
}

class _NameNumberScreenState extends State<NameNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Hero(
                    tag: 'welcomeimage',
                    child: Image(
                      image: AssetImage('images/welcomescreen.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: CustomTextField(
                  isNumber: false,
                  hintText: "Name",
                  prefixIcon: const Icon(Icons.person, color: kPrimaryColor),
                ),
              ),
              CustomTextField(
                isNumber: false,
                hintText: "Email",
                prefixIcon: const Icon(Icons.mail, color: kPrimaryColor),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "You will be getting a One-Time-Password (OTP) on your email.",
                  style: kSmallTextStyle,
                ),
              ),
              Button(
                  text: "Get OTP",
                  onPress: () {
                    Navigator.pushNamed(context, OTPScreen.id);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
