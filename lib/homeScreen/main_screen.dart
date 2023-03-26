import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../compare/compareFood.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
// ignore: prefer_const_constructors
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [HomeScreen(), CompareFood()];
    return Scaffold(
        body: widget[currentIndex],
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding:
                // EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                EdgeInsets.only(left: 50.0, right: 50.0, bottom: 8.0, top: 8.0),
            child: GNav(
                haptic: true, // haptic feedback
                tabBorderRadius: 20,
                // duration: Duration(milliseconds: 1), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                color:
                    Color.fromARGB(255, 148, 148, 148), // unselected icon color
                activeColor: Color.fromRGBO(
                    0, 77, 64, 1), // selected icon and text color
                iconSize: 24, // tab button icon size
                tabBackgroundColor: Color.fromRGBO(
                    0, 77, 64, 0.1), // selected tab background color
                padding: EdgeInsets.all(12),
                onTabChange: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.home_rounded,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.compare_rounded,
                    text: 'Compare',
                  ),
                ]),
          ),
        ));
  }
}
