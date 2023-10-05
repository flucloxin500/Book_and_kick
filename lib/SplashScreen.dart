import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'sign_in.dart';
/// Splash Screen
///


class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kick & Time'),
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This will be fullfilled soon In\'ShaAllah',
            style: TextStyle(
              fontSize: 22,
            ),)

          ],
        ),
      ),
    );
  }

}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignUp(), // Replace 'FirstPage()' with your actual first page widget
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

            Text(
              'version 1.0.0.1',
              style: TextStyle(
                fontSize: 16,

              ),
            ),
            Lottie.asset('assets/loading2.json',
            width: 150,
            height: 150,
            fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
