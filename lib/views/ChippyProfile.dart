import "package:flutter/material.dart";
import 'package:unwrappd/styles/UnwrappdColours.dart';
// types
import "../classes/Chippy.dart";
// profile items
import "../views/profile/About.dart";
import "../views/profile/Reviews.dart";

class ChippyProfile extends StatelessWidget {
  final Chippy chippy;
  ChippyProfile({this.chippy});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: UnwrappdColours.highlightGreen,
            actions: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: new EdgeInsets.all(15),
                  child: Icon(Icons.close),
                ),
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.info_outline),
                  text: "About",
                ),
                Tab(
                  icon: Icon(Icons.record_voice_over),
                  text: "Reviews",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              About(chippy: chippy),
              Reviews(chippy: chippy),
            ],
          ),
        ),
      ),
    );
  }
}
