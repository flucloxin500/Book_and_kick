import 'package:flutter/material.dart';


class TopLeftNavigation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kick & Time'),
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Here will be a navigation bar',
                style: TextStyle(
                  fontSize: 22,
                ),),
            )

          ],
        ),
      ),
    );
  }

}