import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget RotatePhone() {
  return Scaffold(

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please rotate your phone',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)

            ),
            Lottie.asset(
              'assets/rotate.json',
              width: 150,
              height: 150,

            ),
          ],
        ),
      ),
  );
}