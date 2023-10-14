import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:turf_project/mainmenu.dart';

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

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
          builder: (context) =>
          MainHomeScreen(), // Replace 'FirstPage()' with your actual first page widget
      ),
      );
    });
    // Use MediaQuery to get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your app logo image in a round shape
            ClipOval(
              child: Image.asset(
                'assets/logo.jpg',
                width: screenWidth * 0.4, // Adjust the width as a fraction of the screen width
                height: screenWidth * 0.4, // Adjust the height accordingly
                fit: BoxFit.fill,
              ),
            ),

            SizedBox(height: screenHeight * 0.05), // Adjust spacing based on screen height

            // Your app name text goes here
            Text(
              'Book & Kick',
              style: TextStyle(
                fontSize: screenWidth * 0.05, // Adjust font size based on screen width
                fontWeight: FontWeight.bold,
              ),
            ),

            // App version serial
            Text(
              'version 1.0.0.1',
              style: TextStyle(
                fontSize: screenWidth * 0.03, // Adjust font size based on screen width
              ),
            ),

            // Here is the lottie animation resource
            Lottie.asset('assets/loading2.json',
                width: screenWidth * 0.3, // Adjust width based on screen width
                height: screenWidth * 0.3, // Adjust height accordingly
                fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
