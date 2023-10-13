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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Name',
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Mobile Number',
                  hintText: 'Enter your Mobile Number',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Password',
                  hintText: 'Enter your secure password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Confirm Password',
                  hintText: 'Enter your password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 10.0,
                backgroundColor: Colors.blueGrey,
                fixedSize: Size(200.0, 60.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
