import 'package:flutter/material.dart';

class CurvePremiumDetails extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFfbf1e5);
    paint.style = PaintingStyle.fill; // Change this to fill
    var path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height*0.5);
    path.quadraticBezierTo(
        size.width / 2, size.height / 3.5, size.width, size.height*0.5);
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

