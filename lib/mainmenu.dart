import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/login.dart';
import 'package:turf_project/top_left_navigation.dart';
import 'package:intl/intl.dart';
import 'package:turf_project/landscape.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

    return Scaffold(
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 4.5),
                    height: screenHeight * 0.0399,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Time: ${DateFormat('hh:mm').format(DateTime.now())}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: screenHeight * 0.0399,
                    width: screenWidth * 0.08,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Today: ${DateFormat('dd-MM-yyyy').format(DateTime.now())}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
                    // Image.asset(
                    //   'assets/loading2.json',
                    // ),
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

    return RotatePhone();
  }
}
