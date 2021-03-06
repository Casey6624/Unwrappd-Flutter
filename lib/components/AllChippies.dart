import 'package:flutter/material.dart';
import 'package:unwrappd/styles/UnwrappdColours.dart';
import "../classes/Chippy.dart";
import "../components/ChippyCard.dart";
import "package:flutter_svg/flutter_svg.dart";

class AllChippies extends StatelessWidget {
  final List<Chippy> allChippies;
  AllChippies({@required this.allChippies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: ListView(
        padding: new EdgeInsets.all(5),
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.all(20),
            child: Row(
              children: [
                SvgPicture.asset("assets/fans.svg",
                    semanticsLabel: "Fans", width: 90, height: 90),
                Flexible(
                  child: Text(
                    'Hurray! We found ${allChippies.length} fantastic restaraunts 🎉',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: UnwrappdColours.mainGreen,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          for (var chippy in allChippies)
            ChippyCard(
              chippy: chippy,
            )
        ],
      ),
    );
  }
}
