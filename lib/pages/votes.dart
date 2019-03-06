import 'package:flutter/material.dart';

class VotesPage extends StatelessWidget {
  final List<String> candidates1 = [];
  final List<String> candidates2 = [];
  Widget test1;
  Widget test2;

  VotesPage() {
    for (var i = 0; i < 50; i++) {
      candidates1.add('prezydent' + i.toString());
      if (i < 30) candidates2.add('candidate' + i.toString());
    }
    test1 = ListView.separated(
      separatorBuilder: (context, index) => Divider(
            color: Colors.white,
          ),
      itemBuilder: _buildProductItem1,
      itemCount: candidates1.length,
    );
    test2 = ListView.separated(
      separatorBuilder: (context, index) => Divider(
            color: Colors.white,
          ),
      itemBuilder: _buildProductItem2,
      itemCount: candidates2.length,
    );
  }
  Widget _buildProductItem1(BuildContext context, int index) {
    return Column(
      children: <Widget>[Text(candidates1[index])],
    );
  }

  Widget _buildProductItem2(BuildContext context, int index) {
    return Column(
      children: <Widget>[Text(candidates2[index])],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Candidates'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Prezydent',
                ),
                Tab(
                  text: 'Przewodniczacy kola rozancowego',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[test1, test2],
          )),
    );
  }
}
