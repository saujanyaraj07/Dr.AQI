import 'package:dr_aqi/auth/login_controller.dart';

// import 'package:dr_aqi/screena/bottomnavbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/gradient.dart';
import '../screens/intro_screen.dart';

class LoginPage extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 233, 240),
      // body:
    );
  }

  Widget buildProfileView() {
    return const IntroScreen();
  }

  FloatingActionButton buildLoginButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        controller.login();
      },
      icon: Image.asset(
        'assets/images/googlesign.png',
        fit: BoxFit.fill,
      ),
      label: Text("Sign in With Google"),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}
