import 'package:flutter/material.dart';
import "../styles/UnwrappdColours.dart";

class TopCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = UnwrappdColours.highlightGreen
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.quadraticBezierTo(
        size.width * 0.88, size.height * 1.00, size.width * 0.50, size.height);
    path_0.quadraticBezierTo(size.width * 0.14, size.height * 1.04, 0, 0);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
