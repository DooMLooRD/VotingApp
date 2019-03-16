import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  Widget _buildTextContainer(String content, double fontSize) {
    return Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                content,
                style: TextStyle(fontSize: fontSize),
              ),
            );
  }

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
            _buildTextContainer('Voting App', 50),
            _buildTextContainer('Made by', 40),
            _buildTextContainer('Damian Salata', 20),
            _buildTextContainer('Michał Chudzik', 20),
          ],
        ),
      ),
    );
  }
}
