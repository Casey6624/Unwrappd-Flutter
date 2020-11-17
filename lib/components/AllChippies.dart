import 'package:flutter/material.dart';
import "../classes/Chippy.dart";
import "../components/ChippyCard.dart";

class AllChippies extends StatelessWidget {
  final List<Chippy> allChippies;
  AllChippies({@required this.allChippies});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.keyboard_backspace)],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: new EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: ListView(
              children: <Widget>[
                for (var chippy in allChippies)
                  ChippyCard(
                    chippy: chippy,
                  )
              ],
            ),
          ),
        ));
  }
}
