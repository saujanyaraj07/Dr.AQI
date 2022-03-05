import 'package:flutter/material.dart';

import '../constants/gradient.dart';


  


 class Home extends StatefulWidget {
   const Home({ Key? key }) : super(key: key);
 
   @override
   State<Home> createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {
   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
        gradient: AppGradient(),
      ),
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'
          ),
          textAlign: TextAlign.center,
        ),
      ),
     );
   }
 }