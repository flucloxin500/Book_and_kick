import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';

class TopLeftNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final screenWidth = MediaQuery.of(context).size.width;
        final screenHeight = MediaQuery.of(context).size.height;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Book & Kick'),
            leading: IconButton(
              icon: Container(
                height: orientation == Orientation.portrait
                    ? screenWidth * 0.1
                    : screenHeight * 0.1,
                width: orientation == Orientation.landscape
                    ? screenWidth * 0.1
                    : screenHeight * 0.1,
                child: Image.asset('assets/back_button.png'),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MainHomeScreen()),
                );
              },
            ),
            toolbarHeight:
            orientation == Orientation.portrait
                ? screenHeight * 0.1
                : screenWidth * 0.1,
          ),
          backgroundColor: Colors.amberAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(orientation == Orientation.portrait
                      ? screenWidth * 0.05
                      : screenHeight * 0.05),
                  child: Text(
                    'Here will be a navigation bar',
                    style: TextStyle(
                      fontSize: orientation == Orientation.portrait
                          ? screenWidth * 0.06
                          : screenHeight * 0.06,
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
