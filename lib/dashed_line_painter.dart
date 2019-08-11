import 'package:flutter/material.dart';

import 'constraints.dart';

class LineDashedPainter extends CustomPainter {
  double height;

  LineDashedPainter({this.height});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 1
      ..color = kHourRainColumnColor;

    var max = height;
    var dashWidth = height/18;
    var dashSpace = 4;
    double startY = 0;
    while (max >= 0) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      final space = (dashSpace + dashWidth);
      startY -= space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}