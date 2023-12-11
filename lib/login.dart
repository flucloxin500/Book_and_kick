import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/landscape.dart';
import 'package:turf_project/sign_in.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppBar().preferredSize.height,
        backgroundColor: Colors.blueGrey,
        title: Text('Book & Kick',
            style: TextStyle(fontSize: screenWidth * 0.051)),
        leading: IconButton(
          icon: Container(
            height: screenWidth * 0.06,
            width: screenWidth * 0.06,
            child: Image.asset('assets/back_button.png'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                  fontFamily: 'Roboto',
                  fontSize: screenHeight * 0.065,
                  color: Colors.black54,
                  letterSpacing: 2.0,
                  wordSpacing: 4.0,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.0011),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      ),
                      labelText: 'Enter your email or number',
                      hintText: 'Email or number',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.015,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.0011),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      ),
                      labelText: 'Enter your password',
                      hintText: 'Type password',
                    ),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(screenWidth * 0.018),
                      ),
                      padding: EdgeInsets.all(screenWidth * 0.05),
                      backgroundColor: Colors.black54,
                    ),
                    onPressed: () {
                      print("Logged in");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                      ),
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
}

Widget buildLandscapeLayout(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;

  return RotatePhone();
}