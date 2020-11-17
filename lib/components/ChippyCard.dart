import "package:flutter/material.dart";
// types
import "../classes/Chippy.dart";
// styling
import "../styles/UnwrappdColours.dart";

class ChippyCard extends StatelessWidget {
  final Chippy chippy;
  ChippyCard({this.chippy});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: Padding(
          padding: new EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: chippy.thumb.isEmpty || chippy.thumb == ""
                      ? Icon(
                          Icons.fastfood,
                          size: 55,
                          color: UnwrappdColours.gold,
                        )
                      : Image.network(
                          chippy.thumb,
                          scale: 6,
                        ),
                  title: Text(chippy.name,
                      style: TextStyle(
                          fontSize: 20,
                          color: UnwrappdColours.mainGreen,
                          fontWeight: FontWeight.w800)),
                  subtitle: Text(chippy.location.locality,
                      style: TextStyle(
                          color: UnwrappdColours.highlightGreen,
                          fontWeight: FontWeight.w800)),
                ),
                Container(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text('View',
                            style: TextStyle(
                                color: UnwrappdColours.highlightGreen)),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Text('Review',
                            style: TextStyle(
                                color: UnwrappdColours.highlightGreen)),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
