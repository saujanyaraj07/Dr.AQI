import 'package:dr_aqi/auth/login_controller.dart';
import 'package:dr_aqi/constants/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
 
 

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradient(),
      ),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage:
                    Image.network(controller.googleAccount.value?.photoUrl ?? '')
                        .image,
                radius: 100,
              ),
              const SizedBox(height: 20.0,),
              Text(
                controller.googleAccount.value?.displayName ?? '',
                style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Raleway'
                    ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                controller.googleAccount.value?.email ?? '',
                style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Raleway'
                    ),
              ),
              const SizedBox(height: 20.0,),
              ActionChip(
                  label: const Icon(Icons.logout),
                  onPressed: () {
                    controller.logout();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
