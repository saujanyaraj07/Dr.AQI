import 'dart:async';
import 'package:dr_aqi/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import '../auth/login_page.dart';
import '../auth/login_screen.dart';
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
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[900]!, Colors.blue[200]!],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.4, 1.0],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: MediaQuery.of(context).size.width*0.8,
            fit: BoxFit.contain,
          ),
          //const SizedBox(height: 100.0,),
          const DefaultTextStyle(
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono'
              ),
            textAlign: TextAlign.center,
            child: Text('For a Healthier life that we deserve!',),
          ),
        ],
      )
    );
  }
}
