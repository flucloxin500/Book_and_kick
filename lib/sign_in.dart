import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
        toolbarHeight:
            screenHeight * 0.1, // Adjust toolbar height based on screen height
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.center, colors: [
            Colors.blueGrey,
            Colors.grey,
          ]),
        ),
        child: Scrollbar(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.05), // Adjust padding based on screen width
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.05), // Adjust padding based on screen width
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.05), // Adjust padding based on screen width
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    labelText: 'Mobile Number',
                    hintText: 'Enter your Mobile Number',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.05), // Adjust padding based on screen width
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your secure password',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                    screenWidth * 0.05), // Adjust padding based on screen width
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    labelText: 'Confirm Password',
                    hintText: 'Enter your password',
                  ),
                ),
              ),
              Container(
                height: screenHeight *
                    0.1, // Adjust button height based on screen height
                width: screenWidth *
                    0.4, // Adjust button width based on screen width
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth *
                          0.1), // Adjust the radius based on screen width
                    ),
                    padding: EdgeInsets.all(screenWidth *
                        0.05), // Adjust padding based on screen width
                    backgroundColor: Colors.black54,
                  ),
                  onPressed: () {
                    print("Registered");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: screenWidth *
                          0.05, // Adjust font size based on screen width
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
