import 'package:flutter/material.dart';
import 'package:petify/components/button.dart';
import 'package:petify/components/custom_text_field.dart';
import 'package:petify/constants.dart';
import 'package:petify/screens/main_screen.dart';

class OTPScreen extends StatefulWidget {
  static const String id = 'otp_screen';
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('images/otpscreenimage.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: CustomTextField(
                    isNumber: true,
                    hintText: "OTP",
                    prefixIcon:
                        const Icon(Icons.security, color: kPrimaryColor),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Don't share your OTP with anyone",
                    textAlign: TextAlign.left,
                    style: kSmallTextStyle,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Button(
                    text: "Login",
                    onPress: () {
                      Navigator.pushNamed(context, MainScreen.id);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
