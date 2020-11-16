import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
    void paint(Canvas canvas, Size size) {
      Paint paint = Paint();
      Path path = Path();
      paint.color = Color(0xff25c19b);
      path = Path();
      path.lineTo(size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width, 0, size.width, 0);
      path.cubicTo(size.width, 0, size.width * 0.94, -0.02, size.width * 0.82, size.height * 0.16);
      path.cubicTo(size.width * 0.67, size.height * 0.34, size.width * 0.56, size.height * 0.31, size.width * 0.32, size.height * 0.12);
      path.cubicTo(size.width * 0.16, 0, 0, size.height * 0.28, 0, size.height * 0.28);
      path.cubicTo(0, size.height * 0.28, 0, size.height, 0, size.height);
      path.cubicTo(0, size.height, size.width, size.height, size.width, size.height);
      path.cubicTo(size.width, size.height, size.width, size.height * 0.56, size.width, size.height * 0.56);
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }
}
