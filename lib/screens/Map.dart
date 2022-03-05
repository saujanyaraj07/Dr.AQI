import 'package:flutter/material.dart';

import '../constants/gradient.dart';
import '../googlemaps/googleMaps.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradient(),
        ),
        child: const Center(
          child: GoogleMapsScreen(),
          // child: Text(
          //   'Map',
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 30.0,
          //     fontWeight: FontWeight.bold,
          //     fontFamily: 'RobotoMono'
          //   ),
          //   textAlign: TextAlign.center,
          // ),
        ),
      ),
    );
  }
}
