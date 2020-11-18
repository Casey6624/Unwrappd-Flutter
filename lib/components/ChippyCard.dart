import "package:flutter/material.dart";
// types
import "../classes/Chippy.dart";
// styling
import "../styles/UnwrappdColours.dart";
// packages
import 'package:smooth_star_rating/smooth_star_rating.dart';
// components
import "../views/ChippyProfile.dart";

class ChippyCard extends StatelessWidget {
  final Chippy chippy;
  ChippyCard({this.chippy});

  @override
  Widget build(BuildContext context) {
    triggerOpenProfile(id) {
      print(id);
      return;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ChippyProfile(chippy: chippy)));
    }

    return Container(
        width: 200,
        child: Padding(
          padding: new EdgeInsets.fromLTRB(0, 3, 0, 3),
          child: InkWell(
            onTap: () => triggerOpenProfile(chippy.id),
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
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SmoothStarRating(
                              allowHalfRating: false,
                              onRated: (v) {},
                              starCount: 5,
                              rating: 0,
                              size: 20.0,
                              isReadOnly: true,
                              color: UnwrappdColours.highlightGreen,
                              borderColor: UnwrappdColours.highlightGreen,
                              spacing: 0.0),
                          IconButton(
                              onPressed: () {
                                print("wooo");
                              },
                              tooltip: "Write a Review!",
                              color: UnwrappdColours.highlightGreen,
                              icon: Icon(
                                Icons.rate_review,
                                color: UnwrappdColours.highlightGreen,
                              ))
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
