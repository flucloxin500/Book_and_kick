import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';
import 'package:turf_project/sign_in.dart';

class Login extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.center, colors: [
            Colors.blueGrey,
            Colors.grey,
          ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: screenWidth * 0.1, // Adjust font size based on screen width
                fontWeight: FontWeight.w600,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            SizedBox(
              width: screenWidth * 0.9, // Adjust width based on screen width
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.black45,
                  filled: true,
                  hintText: "Enter email address or number",
                  hintStyle: TextStyle(color: Colors.white60),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.015,
            ),
            SizedBox(
              width: screenWidth * 0.9, // Adjust width based on screen width
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.black45,
                  filled: true,
                  hintText: "Enter password",
                  hintStyle: TextStyle(color: Colors.white60),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account? ",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04, // Adjust font size based on screen width
                    color: Colors.black87,
                  ),
                ),
                TextButton(
                  style: OutlinedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.045, // Adjust font size based on screen width
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signin()),
                    );
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              width: screenWidth * 0.4, // Adjust width based on screen width
              height: screenHeight * 0.1, // Adjust height based on screen height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.05), // Adjust the radius based on screen width
                  ),
                  padding: EdgeInsets.all(screenWidth * 0.03), // Adjust padding based on screen width
                  backgroundColor: Colors.black54,
                ),
                onPressed: () {
                  print("Logged in");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04, // Adjust font size based on screen width
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
