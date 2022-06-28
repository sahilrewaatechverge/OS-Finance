import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

class ExpenseGraph extends StatefulWidget {
  const ExpenseGraph({Key? key}) : super(key: key);

  @override
  State<ExpenseGraph> createState() => _ExpenseGraphState();
}

class _ExpenseGraphState extends State<ExpenseGraph> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomGraph(),
    );
  }
}

class CustomGraph extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var paint = Paint()
      ..color = const Color(0xFFBEBEBE)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;
    double degToRad(double deg) => deg * (math.pi / 180.0);

    final path = Path()
      ..arcTo(
          Rect.fromCenter(
            center: Offset(size.height / 2, size.width / 2),
            height: size.height,
            width: size.width,
          ), // 5.
          degToRad(270), // 6.
          degToRad(250), // 7.
          false);

    var paint2 = Paint()
      ..color = const Color(0xFF0076FD)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    canvas.drawCircle(center, radius, paint);
    canvas.drawPath(path, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
