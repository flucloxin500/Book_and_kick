import 'package:flutter/material.dart';
import 'package:turf_project/login.dart';

import 'package:turf_project/top_left_navigation.dart';


class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            "Book & kick",
            style: TextStyle(
              color: Colors.black87,
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey
                  ),
                  child: Container(
                    //margin: EdgeInsets.only(right: 2.0),
                    child: Icon(
                      Icons.login_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
