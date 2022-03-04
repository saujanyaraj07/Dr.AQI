import 'package:dr_aqi/auth/login_controller.dart';
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
            Text(
              controller.googleAccount.value?.displayName ?? '',
              style: Get.textTheme.headlineSmall,
            ),
            Text(
              controller.googleAccount.value?.email ?? '',
              style: Get.textTheme.bodyText1,
            ),
            ActionChip(
                label: Icon(Icons.logout),
                onPressed: () {
                  controller.logout();
                }),
          ],
        ),
      ),
    );
  }
}
