import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../widgets/green_button.dart';

class VotesPageTest extends StatefulWidget {
  @override
  VotePageStateTest createState() => new VotePageStateTest();
}

class VotePageStateTest extends State<VotesPageTest> {
  int _radioValue = 0;
  List<String> candidatesString = new List<String>();
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
    print(_radioValue);
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Column(
      children: <Widget>[makeRadios()[index]],
    );
  }

  List<Widget> makeRadios() {
    List<Widget> candidates = new List<Widget>();
    for (var i = 0; i < candidatesString.length; i++) {
      candidates.add(new RadioListTile(
        value: i,
        title: new Text(candidatesString[i]),
        groupValue: _radioValue,
        onChanged: (int value) {
          _handleRadioValueChange(value);
        },
        activeColor: Colors.red,
      ));
    }
    return candidates;
  }

  VotePageStateTest() {
    getCandidates();
  }
  
  Future getCandidates() async {
    List<String> candid=List<String>();
    http.Response response =
        await http.get('http://192.168.10.3:3000/api/candidateVote');
    List<dynamic>  json= jsonDecode(response.body);
    for (var item in json) {
      candid.add(item["politicalParty"]);
    }
    setState(() {
     candidatesString=candid; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
                  color: Colors.white,
                ),
            itemBuilder: _buildProductItem,
            itemCount: makeRadios().length,
          ),
        ),
        GreenButton(action: () => {}, content: 'Confirm')
      ],
    );
  }
}
