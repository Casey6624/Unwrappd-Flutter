import "package:flutter/material.dart";
import 'package:unwrappd/styles/UnwrappdColours.dart';
// styling
import "../styles/UnwrappdColours.dart";
// components
import "../components/CardBlurb.dart";
import "../components/Search.dart";
import "../classes/CurvePainter.dart";

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(children: <Widget>[
          Container(
            padding: new EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Unwrappd.",
                    style: TextStyle(
                        fontFamily: "FrederickatheGreat",
                        fontSize: 40,
                        color: UnwrappdColours.mainGreen)),
              ],
            ),
          ),
          CardBlurb(
            icon: "assets/eating.svg",
            mainText: "Share your",
            highlightText: "Favourites",
            alignmentDir: "right",
          ),
          CardBlurb(
            icon: "assets/fans.svg",
            mainText: "Compare against",
            highlightText: "Friends",
            alignmentDir: "left",
          ),
          Container(
            height: 180,
            child: CustomPaint(
              child: Search(),
              painter: CurvePainter(),
            ),
          ),
        ]));
  }
}
