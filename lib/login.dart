import 'package:flutter/material.dart';
import 'package:turf_project/sign_in.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            width: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black54,
                ),
                onPressed: () {
                  print("Logged in");
                },
                child: Text("Login")),
          )
        ]),
      ),
    );
  }
}
