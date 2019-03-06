import 'package:flutter/material.dart';
import 'pages/verification.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MainWindow());
}

class MainWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      title: 'Voting App',
      home: VerificationPage(),
    );
  }
}
