import 'package:flutter/material.dart';

class DrawLine {
  final List<Offset> path;
  final Color color;
  final double width;
  
  const DrawLine(this.path, this.color, this.width);
}