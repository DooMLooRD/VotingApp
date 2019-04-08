import 'package:flutter/material.dart';
import '../widgets/green_button.dart';
import '../pages/votes_test.dart';

class VotesPage extends StatefulWidget {
  @override
  VotePageState createState() => new VotePageState();
}

class VotePageState extends State<VotesPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Voting"),
      ),
      body: new VotesPageTest(),
    );
  }
}
