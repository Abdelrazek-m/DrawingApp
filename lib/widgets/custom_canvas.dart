
import 'package:flutter/material.dart';

import '../models/drawing_point_model.dart';
import '../vars.dart';
import 'drawing_painter.dart';

class CustomCanvas extends StatefulWidget {
  const CustomCanvas({super.key});

  @override
  State<CustomCanvas> createState() => _CustomCanvasState();
}

class _CustomCanvasState extends State<CustomCanvas> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onPanStart: (details) {
              setState(() {
                currentDrawingPoint = DrawingPointModel(
                  id: DateTime.now().microsecondsSinceEpoch,
                  offsets: [
                    details.localPosition,
                  ],
                  color: selectedColor,
                  width: selectedWidth,
                );
                if (currentDrawingPoint == null) return;
                drawingPoints.add(currentDrawingPoint!);
                historyDrawingPoint = List.of(drawingPoints);
              });
            },
            onPanUpdate: (details) {
              setState(() {
                if (currentDrawingPoint == null) return;
                currentDrawingPoint = currentDrawingPoint?.copyWith(
                  offsets: currentDrawingPoint!.offsets
                    ..add(details.localPosition),
                );

                drawingPoints.last = currentDrawingPoint!;
                historyDrawingPoint = List.of(drawingPoints);
              });
            },
            onPanEnd: (_) {
              currentDrawingPoint = null;
            },
            child: CustomPaint(
              painter: DrawingPainter(drawingPoints: drawingPoints),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
          );
  }
}