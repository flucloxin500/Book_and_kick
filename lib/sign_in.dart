import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turf_project/landscape.dart';

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
        toolbarHeight: AppBar().preferredSize.height,
        backgroundColor: Colors.blueGrey,
        title: Text('Book & Kick',
            style: TextStyle(
                fontSize: screenWidth * 0.051
            )),
        leading: IconButton(
          icon: Container(
            height: screenWidth * 0.06,
            width: screenWidth * 0.06,
            child: Image.asset('assets/back_button.png'),
          ),
          onPressed: () {
            Navigator.popUntil(context, (MainHomeScreen) {
              return MainHomeScreen.isFirst; // Replace with your condition
            });
          },
        ),// Adjust toolbar height based on screen height
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
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: screenWidth * 0.08,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.black45,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                labelText: 'Name',
                hintText: 'Enter your name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: TextFormField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                labelText: 'Mobile Number',
                hintText: 'Enter your Mobile Number',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                labelText: 'Password',
                hintText: 'Enter your secure password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: TextFormField(
              obscureText: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(screenWidth * 0.03),
                ),
                labelText: 'Confirm Password',
                hintText: 'Enter your password',
              ),
            ),
          ),
          Container(
            height: screenHeight * 0.1,
            width: screenWidth * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenWidth * 0.018),
                  ),
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  backgroundColor: Colors.black54,
                ),
                onPressed: () {
                  print("Registered");
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout(BuildContext context) {

    return RotatePhone();
  }
}