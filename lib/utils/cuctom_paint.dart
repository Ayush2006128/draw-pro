// 1
import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
 @override
  void paint(Canvas canvas, Size size) {
    // 1
    Offset startPoint = const Offset(0, 0);
    // 2
    Offset endPoint = Offset(size.width, size.height);
    // 3
    Paint paint = Paint();
    // 4
    canvas.drawLine(startPoint, endPoint, paint);
  }

  void draw(List<Offset> points, Color color){
    
  }
  // 4
  @override
  bool shouldRepaint(MyCustomPainter delegate) {
    return true;
  }
}
