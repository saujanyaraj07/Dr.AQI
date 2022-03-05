import 'dart:async';

import 'package:dr_aqi/screens/intro_screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_page.dart';
import '../constants/gradient.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        /*decoration: BoxDecoration(
        gradient:AppGradient(),
      ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset(
              'assets/images/drone.png',
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
            Image.asset(
              'assets/ images/logo-1.png',
              width: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 100.0,
            ),
            DefaultTextStyle(
              style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono'),
              textAlign: TextAlign.center,
              child: const Text(
                'For a Healthier life that we deserve!',
              ),
            ),
          ],
        ));
  }
}
