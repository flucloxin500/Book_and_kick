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
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? SplashScreenPortrait()
              : SplashScreenLandscape();
        },
      ),
    );
  }
}

class SplashScreenPortrait extends StatefulWidget {
  @override
  _SplashScreenPortraitState createState() => _SplashScreenPortraitState();
}

class _SplashScreenPortraitState extends State<SplashScreenPortrait> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainHomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/logo.jpg',
                width: screenWidth * 0.4,
                height: screenWidth * 0.4,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              'Book & Kick',
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'version 1.0.0.1',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
              ),
            ),
            Lottie.asset(
              'assets/loading2.json',
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreenLandscape extends StatefulWidget {
  @override
  _SplashScreenLandscapeState createState() => _SplashScreenLandscapeState();
}

class _SplashScreenLandscapeState extends State<SplashScreenLandscape> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainHomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.jpg',
              width: screenWidth * 0.2,
              height: screenWidth * 0.2,
              fit: BoxFit.fill,
            ),
            SizedBox(width: screenWidth * 0.05),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Book & Kick',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'version 1.0.0.1',
                  style: TextStyle(
                    fontSize: screenWidth * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(width: screenWidth * 0.05),
            Lottie.asset(
              'assets/loading2.json',
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
