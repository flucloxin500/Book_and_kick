import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/login.dart';
import 'package:turf_project/top_left_navigation.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions using MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.1, // Adjust toolbar height based on screen height
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          "Book & Kick",
          style: TextStyle(
            color: Colors.black87,
            fontSize: screenWidth * 0.05, // Adjust font size based on screen width
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
            size: screenWidth * 0.05, // Adjust icon size based on screen width
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
                size: screenWidth * 0.05, // Adjust icon size based on screen width
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth * 0.3, // Adjust container width based on screen width
          height: screenHeight * 0.2, // Adjust container height based on screen height
          color: Colors.blue,
          child: ListView(
            shrinkWrap: true,
            children: [
              // Add your content here
            ],
          ),
        ),
      ),
    );
  }
}
