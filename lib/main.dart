import 'package:flutter/material.dart';
import 'package:petify/screens/main_screen.dart';
import 'package:petify/screens/namenumber_screen.dart';
import 'package:petify/screens/otp_screen.dart';
import 'package:petify/screens/pet_profile.dart';
import 'package:petify/screens/welcome_screen.dart';

void main() {
  runApp(const Petify());
}

class Petify extends StatelessWidget {
  const Petify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => const WelcomeScreen(),
      NameNumberScreen.id: (context) => const NameNumberScreen(),
      OTPScreen.id: (context) => const OTPScreen(),
      MainScreen.id: (context) => const MainScreen(),
      PetProfile.id: (context) => const PetProfile(),
    });
  }
}
