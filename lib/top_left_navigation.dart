import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/landscape.dart';

class TopLeftNavigation extends StatefulWidget {
  @override
  _TopLeftNavigationState createState() => _TopLeftNavigationState();
}

class _TopLeftNavigationState extends State<TopLeftNavigation> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.landscape) {
          return RotatePhone();
        }

        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: AppBar().preferredSize.height,
            backgroundColor: Colors.blueGrey,
            title: Text(
              'Book & Kick',
              style: TextStyle(fontSize: screenWidth * 0.051),
            ),
            leading: IconButton(
              icon: Container(
                height: screenHeight * 0.025,
                width: screenWidth * 0.06,
                child: Image.asset('assets/back_button.png'),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.amberAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenHeight * 0.05),
                  child: Text(
                    'Here will be a navigation bar',
                    style: TextStyle(
                      fontSize: screenHeight * 0.024,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
