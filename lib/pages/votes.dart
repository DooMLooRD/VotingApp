import 'package:flutter/material.dart';
import '../widgets/green_button.dart';
import '../model/candidate.dart';
import '../widgets/entry.dart';
import 'package:collection/collection.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class VotesPage extends StatefulWidget {
  final String _tokenId;
  VotesPage(this._tokenId);

  @override
  VotePageState createState() => VotePageState();
}

class VotePageState extends State<VotesPage> {
  int _radioValue = 0;
  final String _getCandidateUrl = 'http://10.0.2.2:8081/vm/getCandidates';
  final String _postVoteUrl = 'http://10.0.2.2:8081/vm/vote';
  List<Entry<Candidate>> entries = List<Entry<Candidate>>();
  VotePageState() {
    http.get(_getCandidateUrl).then((response) {
      List<Candidate> candid = List<Candidate>();
      List<Entry<Candidate>> entr = List<Entry<Candidate>>();

      List<dynamic> json = jsonDecode(response.body);
      for (var item in json) {
        candid.add(Candidate.fromJson(item));
      }
      var map = groupBy(candid, (Candidate s) => s.party);
      map.forEach((s, c) {
        entr.add(Entry<Candidate>(s, c));
      });
      setState(() {
        entries = entr;
      });
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  List<Widget> makeRadios(List<Candidate> candid) {
    List<Widget> candidates = new List<Widget>();
    for (var i = 0; i < candid.length; i++) {
      candidates.add(new RadioListTile(
        value: candid[i].id,
        title: new Text(candid[i].toString()),
        groupValue: _radioValue,
        onChanged: (int value) {
          _handleRadioValueChange(value);
        },
        activeColor: Colors.red,
      ));
    }
    return candidates;
  }

  Future _vote() async {
    var body =
        json.encode({"tokenId": widget._tokenId, "candidateId": _radioValue});
    await http
        .post(_postVoteUrl,
            headers: {"Content-Type": "application/json"}, body: body)
        .then((response) => Navigator.pushNamed(context, '/'))
        .timeout(Duration(seconds: 5),
            onTimeout: () => Navigator.pushNamed(context, '/'));
  }

  Widget _buildCandidates(BuildContext context, int index) {
    return ExpansionTile(
      key: PageStorageKey<Entry<Candidate>>(entries[index]),
      title: Text(entries[index].title),
      children: makeRadios(entries[index].children),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Voting"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: _buildCandidates,
                itemCount: entries.length,
              ),
            ),
            GreenButton(action: () => _vote(), content: 'Confirm')
          ],
        ));
  }
}
