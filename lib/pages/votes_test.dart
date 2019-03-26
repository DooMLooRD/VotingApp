import 'package:flutter/material.dart';
import '../widgets/green_button.dart';

class VotesPageTest extends StatefulWidget {
  @override
  VotePageStateTest createState() => new VotePageStateTest();
}

class VotePageStateTest extends State<VotesPageTest> {
  
  int _radioValue = 0;

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
  List<Widget> makeRadios(){
    List<Widget> candidates = new List<Widget>();
     for (var i = 0; i < 50; i++) {
      candidates.add(new RadioListTile(
        value: i,
        title: new Text('EL PRESIDENTO $i'),
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
