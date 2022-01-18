import 'package:flutter/material.dart';
import 'package:petify/components/settings_card.dart';
import 'package:petify/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryWhite,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              color: kPrimaryColor,
              child: Column(
                children: const [
                  Image(
                    image: AssetImage('images/profile.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Emma Jones",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryWhite),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text("Edit Profile",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: kPrimaryWhite,
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  SettingsCard(
                      icon: Icon(Icons.notifications,
                          size: 28, color: kPrimaryColor),
                      name: "Notifications"),
                  SettingsCard(
                      icon: Icon(Icons.privacy_tip,
                          size: 28, color: kPrimaryColor),
                      name: "Security"),
                  SettingsCard(
                      icon:
                          Icon(Icons.language, size: 28, color: kPrimaryColor),
                      name: "Language"),
                  SettingsCard(
                      icon: Icon(Icons.help_center_sharp,
                          size: 28, color: kPrimaryColor),
                      name: "Help"),
                  SettingsCard(
                      icon: Icon(Icons.info, size: 28, color: kPrimaryColor),
                      name: "About"),
                  SettingsCard(
                      icon: Icon(Icons.logout, size: 28, color: kPrimaryColor),
                      name: "Log Out",
                      isRed: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
