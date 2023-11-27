import 'dart:ui';
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: screenWidth * 0.95,
                height: screenHeight * 0.675,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Frenzy Sports Arena',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/frenzy.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Timeout',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/timeout.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'RS Dynamic Ground',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/rs_dynamic.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'D&C Arena',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/d_and_c.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'AKC Play',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/akc.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Stadium X',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/sportsX.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Victory Arena',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Image.asset(
                                  'assets/victory.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Card(
                        child: Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopLeftNavigation()),
                              );
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Global Sports Complex',
                                  style: TextStyle(fontSize: 17),
                                ),
                                Image.asset(
                                  'assets/global_sports.jpg',
                                  height: screenHeight * 0.185,
                                  width: screenWidth * 0.427,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout(BuildContext context) {
    return RotatePhone();
  }
}
