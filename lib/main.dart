import 'package:flutter/material.dart';
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
        '/': (context) => HomePage(),
      },
        onGenerateRoute: (settings) {
        final arguments = settings.arguments;
        switch (settings.name) {
          case '/vote':
            return MaterialPageRoute(builder: (context) => VotesPage(arguments) );
            break;
        }
      },
      theme: ThemeData(brightness: Brightness.light,),
      title: 'Voting App',
    );
  }
}
