  import 'package:flutter/material.dart';

import 'models/drawing_point_model.dart';

var colorsList = [
    Colors.black,
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.brown,
  ];

  var historyDrawingPoint = <DrawingPointModel>[];

  var drawingPoints = <DrawingPointModel>[];

  DrawingPointModel? currentDrawingPoint;

  var selectedColor = Colors.black;
  var selectedWidth = 2.0;