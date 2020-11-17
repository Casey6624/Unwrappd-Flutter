import "package:flutter/material.dart";
// types
import "../classes/Chippy.dart";

class ChippyCard extends StatelessWidget {
  final Chippy chippy;
  ChippyCard({this.chippy});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [Text(chippy.name), Text(chippy.timings)],
      ),
    );
  }
}
