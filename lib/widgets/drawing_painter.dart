
import 'package:flutter/material.dart';

import '../models/drawing_point_model.dart';

class DrawingPainter extends CustomPainter {
  final List<DrawingPointModel> drawingPoints;

  DrawingPainter({required this.drawingPoints});
  @override
  void paint(Canvas canvas, Size size) {
    for (var drawingPoint in drawingPoints) {
      final paint = Paint()
        ..color = drawingPoint.color
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.width
        ..strokeCap = StrokeCap.round;
      for (var i = 0; i < drawingPoint.offsets.length; i++) {
        var notLastOffset = i != drawingPoint.offsets.length - 1;
        if (notLastOffset) {
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i + 1];
          canvas.drawLine(current, next, paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}