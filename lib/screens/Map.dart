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
      body: MapSample(),
    );
  }
}
