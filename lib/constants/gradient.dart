import 'package:flutter/material.dart';

class AppGradient extends LinearGradient {
  AppGradient() : super(    
    colors: [Colors.blue[900]!, Colors.blue[200]!],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0.6, 1.0],          
  );
}