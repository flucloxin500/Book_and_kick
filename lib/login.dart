import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';
import 'package:turf_project/sign_in.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Book & Kick'),
        leading: IconButton(
          icon: Container(
            height: 26,
              width: 26,
              child: Image.asset('assets/back_button.png')),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MainHomeScreen()),
            );
          },
        ),
        toolbarHeight: 60,
      ),
      body: Container(
        width: double.infinity,

        /// Multiple colour on body
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.center, colors: [
          Colors.blueGrey,
          Colors.grey,
        ])),

        ///Login text
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "Login",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            height: 30,
          ),

          ///Text field(email,password box)
          SizedBox(
            width: 390,
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.black45,
                  filled: true,
                  hintText: "Enter email address or number",
                  hintStyle: TextStyle(color: Colors.white60)),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 390,
            child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.black45,
                    filled: true,
                    hintText: "Enter password",
                    hintStyle: TextStyle(color: Colors.white60))),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have any account? ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),

              ///Signup button
              TextButton(
                  style: OutlinedButton.styleFrom(
                      textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
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
                        color: Colors.black),
                  ))
            ],
          ),

          ///Login button
          SizedBox(
            height: 8,
          ),
          Container(
            width: 120,
            height: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  ),// This makes the button circular
                  padding: EdgeInsets.all(16.0),

                  backgroundColor: Colors.black54,
                ),
                onPressed: () {
                  print("Logged in");
                },
                child: Text("Login",
                style: TextStyle(
                  fontSize: 17),)),
          )
        ]),
      ),
    );
  }
}

