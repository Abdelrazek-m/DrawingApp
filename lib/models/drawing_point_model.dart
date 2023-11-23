import 'package:flutter/material.dart';

class DrawingPointModel {
  final int id;
  final List<Offset> offsets;
  final Color color;
  final double width;

  DrawingPointModel({
    this.id=-1,
    this.offsets=const[],
    this.color=Colors.black,
    this.width=2,
  });

  DrawingPointModel copyWith({List<Offset>? offsets}){
    return DrawingPointModel(
      id: id, 
      color: color,
      width: width, 
      offsets: offsets??this.offsets,
    );

  }
}
