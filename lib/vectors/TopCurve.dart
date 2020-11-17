import 'package:flutter/material.dart';

class TopCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff39dba1);
    path = Path();
    path.lineTo(size.width, 0);
    path.cubicTo(size.width, 0, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, size.height * 0.84, 0, size.height * 0.84);
    path.cubicTo(0, size.height * 0.84, size.width, size.height * 0.84,
        size.width, size.height * 0.84);
    path.cubicTo(size.width, size.height * 0.84, size.width, 0, size.width, 0);
    path.lineTo(0, size.height * 0.84);
    path.cubicTo(
        0, size.height * 0.84, 0, size.height * 0.87, 0, size.height * 0.87);
    path.cubicTo(size.width * 0.38, size.height * 1.04, size.width * 0.62,
        size.height * 1.04, size.width, size.height * 0.87);
    path.cubicTo(size.width, size.height * 0.87, size.width, size.height * 0.84,
        size.width, size.height * 0.84);
    path.cubicTo(size.width, size.height * 0.84, 0, size.height * 0.84, 0,
        size.height * 0.84);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
