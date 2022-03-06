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
          decoration: BoxDecoration(gradient: AppGradient()),
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
             //decoration: BoxDecoration(color: Colors.white70),
             child: Padding(
               padding: const EdgeInsets.only(top: 15.0),
               child: Image.asset('assets/images/home1.png',fit: BoxFit.fill,),
             ),
       
     );
   }
 }