import 'package:flutter/material.dart';
import 'package:turf_project/mainmenu.dart';

class TopLeftNavigation extends StatelessWidget {
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
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Here will be a navigation bar',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
