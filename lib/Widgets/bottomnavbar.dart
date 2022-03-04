import 'package:dr_aqi/screens/DashBoard.dart';
import 'package:dr_aqi/screens/Home.dart';
import 'package:dr_aqi/screens/Map.dart';
import 'package:dr_aqi/screens/Profile.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final screens = [
    Home(),
    DashBoard(),
    Map(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),

        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Dashboard',
            icon: Icon(
              Icons.dashboard_rounded,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.map_outlined,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person_rounded,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
