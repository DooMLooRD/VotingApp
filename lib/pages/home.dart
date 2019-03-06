import 'package:flutter/material.dart';

import 'votes.dart';
import 'about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      title: 'Voting App',
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(title: Text('Menu'), automaticallyImplyLeading: false),
              ListTile(
                title: Text('Vote'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => VotesPage(),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text('Voting App')),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Welcome to voting application!\nTo vote open the side bar and chose Vote.',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
