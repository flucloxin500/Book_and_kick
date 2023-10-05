import 'package:flutter/material.dart';

/// This package for splash screen menu
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Debug checker

      debugShowCheckedModeBanner:false,
      home: SplashScreen(), // Display the SplashScreen widget as the first screen
    );
  }
}
