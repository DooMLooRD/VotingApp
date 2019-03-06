import 'package:flutter/material.dart';

import 'home.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Enter your code:'),
              TextField(
                decoration: InputDecoration(labelText: 'Code'),
              ),
              RaisedButton(
                child: Text('Confirm'),
                onPressed: () => {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(),
                        ),
                      )
                    },
              )
            ],
          ),
        ),
      ),
    );
  }
}
