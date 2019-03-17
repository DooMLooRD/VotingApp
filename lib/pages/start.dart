import 'package:flutter/material.dart';

import '../widgets/green_button.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Generator"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GreenButton(
                  content: "Generate",
                  action: () { Navigator.pushNamed(context, '/code'); })
            ],
          ),
        ),
      ),
    );
  }
}
