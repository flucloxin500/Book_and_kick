import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';

class TopLeftNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Book & Kick'),
        leading: IconButton(
          icon: Container(
            height: screenWidth * 0.1,
            width: screenWidth * 0.1,
            child: Image.asset('assets/back_button.png'),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MainHomeScreen()),
            );
          },
        ),
        toolbarHeight: screenHeight * 0.1, // Adjust toolbar height based on screen height
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05), // Adjust padding based on screen width
              child: Text(
                'Here will be a navigation bar',
                style: TextStyle(
                  fontSize: screenWidth * 0.06, // Adjust font size based on screen width
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
