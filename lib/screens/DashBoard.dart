import 'package:flutter/material.dart';

import '../constants/gradient.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradient(),
      ),
      child: const Center(
        child: Text(
          'Dashboard  Comming Soon',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono'),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
