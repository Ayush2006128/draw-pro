import 'package:draw/utils/cuctom_paint.dart';
import 'package:draw/utils/line.dart';
import 'package:flutter/material.dart';

class CanvasWidget extends StatefulWidget {
  const CanvasWidget({super.key});

  @override
  State<CanvasWidget> createState() => _CanvasWidgetState();
}

class _CanvasWidgetState extends State<CanvasWidget> {
  late List<DrawLine> line;

  void onPanStart(DragStartDetails details) {
  final box = context.findRenderObject() as RenderBox;
  final point = box.globalToLocal(details.globalPosition);
}

void onPanUpdate(DragUpdateDetails details) {
  final box = context.findRenderObject() as RenderBox;
  final point = box.globalToLocal(details.globalPosition);
}

void onPanEnd(DragEndDetails details) {
}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.98,
      height: MediaQuery.of(context).size.height *0.96,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: GestureDetector(
        onPanStart: onPanStart,
        onPanUpdate: onPanUpdate,
        onPanEnd: onPanEnd,
        child: CustomPaint(
          painter: MyCustomPainter(lines: line),
        ),
      ),
    );
  }
}