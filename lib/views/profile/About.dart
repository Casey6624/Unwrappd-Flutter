import 'package:flutter/material.dart';
import "../../classes/Chippy.dart";
// colours
import "../../styles/UnwrappdColours.dart";

class About extends StatelessWidget {
  final Chippy chippy;
  About({@required this.chippy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Row(
        children: [
          Container(
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
              ))
        ],
      )),
    );
  }
}
