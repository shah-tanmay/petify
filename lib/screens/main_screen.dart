import 'package:flutter/material.dart';
import 'package:petify/constants.dart';
import 'package:petify/screens/all_chat_screen.dart';
import 'package:petify/screens/home_screen.dart';
import 'package:petify/screens/liked_screen.dart';
import 'package:petify/screens/search_screen.dart';
import 'package:petify/screens/settings_screen.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final pageViewController = PageController();
  static const List<Widget> widgetOptions = [
    HomeScreen(),
    SearchScreen(),
    LikedScreen(),
    AllChatScreen(),
    SettingsScreen(),
  ];

  void onItemTapped(int index) {
    pageViewController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: PageView(
          controller: pageViewController,
          children: widgetOptions,
          onPageChanged: (index) {
            print(index);
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          selectedIconTheme: const IconThemeData(color: kPrimaryColor),
          unselectedItemColor: Colors.grey,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Liked",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ),
      ),
    );
  }
}
