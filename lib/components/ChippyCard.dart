import "package:flutter/material.dart";
// types
import "../classes/Chippy.dart";
// styling
import "../styles/UnwrappdColours.dart";
// packages
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:http/http.dart' as http;
// components
import "../views/ChippyProfile.dart";
import 'dart:convert';

class ChippyCard extends StatelessWidget {
  final Chippy chippy;
  ChippyCard({this.chippy});

  @override
  Widget build(BuildContext context) {
    Future<Chippy> getChippyProfile(String id) async {
      var chippyProfile;
      print("Getting more details for chippy with ID " + id);
      try {
        String query = "http://172.16.6.158:4500/get-chippy-details?cId=" + id;
        final http.Response response = await http.get(
          query,
          headers: {'Content-Type': 'application/json; charset=UTF-8'},
        );
        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          chippyProfile = Chippy.fromJson(data);
          return chippyProfile;
        }
      } catch (error) {
        print(error);
      }
      return chippyProfile;
    }

    triggerOpenProfile(id) async {
      Chippy chippyProfile = await getChippyProfile(id);
      if (chippyProfile is Chippy) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ChippyProfile(chippy: chippyProfile)));
      } else {
        print("could not get the chippy data");
        // TODO: add error popupo
      }
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
