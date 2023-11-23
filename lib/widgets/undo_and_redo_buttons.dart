
import 'package:flutter/material.dart';

import '../vars.dart';

class UndoAndRedoButtons extends StatefulWidget {
  const UndoAndRedoButtons({super.key});

  @override
  State<UndoAndRedoButtons> createState() => _UndoAndRedoButtonsState();
}

class _UndoAndRedoButtonsState extends State<UndoAndRedoButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'Undo',
            onPressed: () {
              if (drawingPoints.isNotEmpty && historyDrawingPoint.isNotEmpty) {
                drawingPoints.removeLast();
                setState(() {});
              }
            },
            child: Icon(Icons.undo),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'Redo',
            onPressed: () {
              if (drawingPoints.length < historyDrawingPoint.length) {
                final index = drawingPoints.length;
                drawingPoints.add(historyDrawingPoint[index]);
                setState(() {});
              }
            },
            child: Icon(Icons.redo),
          ),
        ],
      );
  }
}