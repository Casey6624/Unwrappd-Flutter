import 'package:flutter/material.dart';
import "../../classes/Chippy.dart";
// colours
import "../../styles/UnwrappdColours.dart";
// svgs
import "../../vectors/TopCurve.dart";
// components
import "../../components/Highlights.dart";

class About extends StatelessWidget {
  final Chippy chippy;
  About({@required this.chippy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/fishandchips.jpg"),
                  fit: BoxFit.cover)),
          child: Column(children: [
            Stack(
              children: [
                Container(
                    height: 120,
                    alignment: Alignment.center,
                    child: CustomPaint(
                      size: Size(800, 200),
                      painter: TopCurve(),
                    )),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Padding(
                      padding: new EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: UnwrappdColours.mainGreen,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: chippy.thumb != ""
                              ? NetworkImage(chippy.thumb)
                              : null,
                          backgroundColor: Colors.white,
                          child: chippy.thumb == ""
                              ? Icon(
                                  Icons.fastfood,
                                  size: 55,
                                  color: UnwrappdColours.gold,
                                )
                              : null,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
                margin: new EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: new EdgeInsets.fromLTRB(50, 10, 50, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        chippy.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "FrederickatheGreat",
                          fontSize: 42,
                          color: UnwrappdColours.offHighlightGreen,
                        ),
                      ),
                      Text(chippy.location.address,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.4,
                              fontFamily: 'Montserrat',
                              fontSize: 14.0)),
                      Container(
                        child: Highlights(
                          highlights: chippy.highlights,
                        ),
                      )
                    ],
                  ),
                )),
          ]),
        ));
  }
}

/*           Container(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: UnwrappdColours.highlightGreen,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      chippy.thumb != "" ? NetworkImage(chippy.thumb) : null,
                  backgroundColor: Colors.white,
                  child: chippy.thumb == ""
                      ? Icon(
                          Icons.fastfood,
                          size: 55,
                          color: UnwrappdColours.gold,
                        )
                      : null,
                ),
              )), */
