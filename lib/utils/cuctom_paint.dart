// 1
import 'package:draw/utils/line.dart';
import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  final List<DrawLine> lines;
  MyCustomPainter({required this.lines});
 @override
  void paint(Canvas canvas, Size size) {

    Paint paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5.0;
    // 4
    for (var i = 0; i < lines.length; ++i) {
      if (lines[i] == null) {
        continue;
      }
      for (var j = 0; j < lines[i].path.length - 1; ++j) {
        if (lines[i].path[j] != null && lines[i].path[j] != null) {
          paint.color = lines[i].color;
          paint.strokeWidth = lines[i].width;
          canvas.drawLine(lines[i].path[j], lines[i].path[j - 1], paint);
        }
      }
    }
  }
    
  
  // 4
  @override
  bool shouldRepaint(MyCustomPainter delegate) {
    return true;
  }
}
