import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String pageName;

  PlaceholderWidget(this.color, this.pageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text(pageName),
    );
  }
}
