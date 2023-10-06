import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:turf_project/mainmenu.dart';

/// This package for splash screen menu

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Debug checker

      debugShowCheckedModeBanner: false,
      home:
          SplashScreen(), // Display the SplashScreen widget as the first screen
    );
  }
}

/// This class is for Splash Screen
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Timer fopr the Splash timing
    Future.delayed(Duration(seconds: 4), () {
      /// Navigator after the animation times up
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              MainHomeScreen(), // Replace 'FirstPage()' with your actual first page widget
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your app logo image in a round shape
            ClipOval(
              /// Showing the app logo with circle
              child: Image.asset(
                'assets/logo.jpg',
                width: 180, // Adjust the width as needed
                height: 180, // Adjust the height as needed
                fit: BoxFit.fill,
              ),
            ),

            SizedBox(height: 30),

            // Your app name text goes here
            Text(
              'Book & Kick',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // App version serial

            Text(
              'version 1.0.0.1',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            /// Here is the lottie animation resourse
            Lottie.asset('assets/loading2.json',
                width: 150, height: 150, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
