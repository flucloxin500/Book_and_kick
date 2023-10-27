import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/login.dart';
import 'package:turf_project/top_left_navigation.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: AppBar().preferredSize.height,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Book & Kick",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopLeftNavigation()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          child: Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            child: Container(
              child: Icon(
                Icons.login_sharp,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? buildPortraitLayout(context)
              : buildLandscapeLayout(context);
        },
      ),
    );
  }

  Widget buildPortraitLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.3,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(screenWidth * 0.05),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    // Add your content here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.5,
            height: screenHeight * 0.8,
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(screenWidth * 0.05),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                // Add your content here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
