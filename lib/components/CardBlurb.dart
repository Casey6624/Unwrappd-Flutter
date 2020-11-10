import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:unwrappd/styles/UnwrappdColours.dart';

class CardBlurb extends StatelessWidget {
  final String icon;
  final String mainText;
  final String highlightText;
  final String alignmentDir;

  CardBlurb({this.icon, this.mainText, this.highlightText, this.alignmentDir});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(5),
      child: Card(
          child: Column(
        crossAxisAlignment: alignmentDir == "right"
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: new EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: alignmentDir == "right"
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                SvgPicture.asset(icon,
                    semanticsLabel: "Fans", width: 120, height: 120)
              ],
            ),
          ),
          Container(
            padding: new EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: alignmentDir == "right"
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: mainText + " ",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 20,
                            color: UnwrappdColours.mainGreen),
                        children: <TextSpan>[
                          TextSpan(
                              text: highlightText,
                              style: TextStyle(
                                  color: UnwrappdColours.highlightGreen))
                        ]),
                  )
                ]),
          )
        ],
      )),
    );
  }
}
