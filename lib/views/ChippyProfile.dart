import "package:flutter/material.dart";
// types
import "../classes/Chippy.dart";

class ChippyProfile extends StatelessWidget {
  final Chippy chippy;
  ChippyProfile({this.chippy});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("wooo profile haha $this.chippy.name"),
    );
  }
}
