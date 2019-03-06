import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String content;
  final Function action;

  MenuButton(this.content, this.action);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonTheme(
          padding: EdgeInsets.all(10.0),
          minWidth: double.infinity,
          child: FlatButton(
            onPressed: () {
              action();
            },
            child: SizedBox(
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
