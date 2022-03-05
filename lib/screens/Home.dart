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
     return Scaffold(
       body: Container(
         height: 1000,
         width: 500,

           decoration: BoxDecoration(color: Colors.white70),
           child: Image.asset('assets/images/home1.png',fit: BoxFit.fill,),),
     );
   }
 }