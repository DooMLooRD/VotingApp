import 'package:flutter/material.dart';

import '../widgets/fancy_button.dart';
import 'votes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      title: 'Voting App',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                'Your code:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                '3456789',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: MenuButton(
                content: "Vote",
                action: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => VotesPage(),
                      ),
                    );},
              ),
            )
          ],
        ),
      ),
    );
  }
}
