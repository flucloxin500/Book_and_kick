import 'package:flutter/material.dart';
import 'package:turf_project/SplashScreen.dart';
class SignUp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.white, //set clr to backgrnd
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary:Colors.blueGrey,
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
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
              ),
              child: Container(
                margin: EdgeInsets.only(right: 5.0),
                child: Icon(Icons.login_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}