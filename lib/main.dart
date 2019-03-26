import 'package:flutter/material.dart';
import 'pages/start.dart';
import 'pages/home.dart';
import 'pages/votes.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MainWindow());
}

class MainWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
        '/code': (context) => HomePage(),
        '/vote': (context) => VotesPage()
      },
      theme: ThemeData(brightness: Brightness.light,),
      title: 'Voting App',
    );
  }
}
