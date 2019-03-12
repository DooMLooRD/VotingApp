import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String content;
  final Function action;

  MenuButton({this.content, this.action});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonTheme(
          padding: EdgeInsets.all(20.0),
          minWidth: double.infinity,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            color: Color.fromRGBO(64, 224, 208, 1),
            highlightColor: Color.fromRGBO(38, 134, 124, 1),
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
      ],
    );
  }
}
