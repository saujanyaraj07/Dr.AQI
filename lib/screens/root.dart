import 'package:dr_aqi/screens/DashBoard.dart';
import 'package:dr_aqi/screens/Home.dart';
import 'package:dr_aqi/screens/Map.dart';
import 'package:dr_aqi/screens/Profile.dart';
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  List itemsTab = [
    {"icon": Icons.home, "size": 30.0},
    {"icon": Icons.dashboard_rounded, "size": 26.0},    
    {"icon": Icons.map_rounded, "size": 28.0},
    {"icon": Icons.person_rounded, "size": 28.0},
  ];

  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: bottomNavbar(),
        body: getBody(activeTab),
      ),
    );
  }

  Widget bottomNavbar() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(itemsTab.length, (index) {
              return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: activeTab == index ? Colors.blue[800] : Colors.black,
                )
              );
            }),
          )
      )
    );
  }
}

Widget getBody(int activeTab) {
  return IndexedStack(index: activeTab, children: const [
    Home(),
    DashBoard(),
    Map(),
    Profile(),
  ]);
}
