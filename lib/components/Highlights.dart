import "package:flutter/material.dart";

class Highlights extends StatelessWidget {
  final List<String> highlights;
  Highlights({this.highlights});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [for (var hl in highlights) Text(hl)]));
  }
}
