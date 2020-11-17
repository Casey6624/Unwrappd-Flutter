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
          padding: new EdgeInsets.fromLTRB(0, 1, 0, 1),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: UnwrappdColours.orange,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 70),
                  title:
                      Text(chippy.name, style: TextStyle(color: Colors.white)),
                  subtitle: Text(chippy.location.city,
                      style: TextStyle(color: Colors.white)),
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('View',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('Review',
                            style: TextStyle(color: Colors.white)),
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
