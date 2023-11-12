import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/landscape.dart';
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
            height: 26,
            width: 26,
            child: Image.asset('assets/back_button.png'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight:
        screenHeight * 0.1,
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

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.center, colors: [
          Colors.blueGrey,
          Colors.grey,
        ]),
      ),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              SizedBox(
                width: screenWidth * 0.9,
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
                width: screenWidth * 0.9,
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
                      fontSize: screenWidth * 0.04,
                      color: Colors.black87,
                    ),
                  ),
                  TextButton(
                    style: OutlinedButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
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
                width: screenWidth * 0.4,
                height: screenHeight * 0.1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.05),
                    ),
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    backgroundColor: Colors.black54,
                  ),
                  onPressed: () {
                    print("Logged in");
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              )
            ],
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

