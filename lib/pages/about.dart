import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Voting app',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Made by:',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Damian Salata',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'Michal Chudzik',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
