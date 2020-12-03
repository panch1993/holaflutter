import 'package:flutter/material.dart';

import 'axis_painter.dart';
import 'coordinate.dart';

class EasyPainter extends CustomPainter {
  final Coordinate coordinate = Coordinate(step: 25); // 定义坐标系
  // 创建画笔
  final Paint _paint = Paint()..isAntiAlias = true
  ..strokeWidth = 3
  ..color = Colors.blue;


  @override
  void paint(Canvas canvas, Size size) {
    coordinate.paint(canvas, size);
    var dy = size.height / 2.0;
    var dx = size.width / 2.0;
    canvas.drawCircle(Offset(dx, dy), 30, _paint);
    canvas.drawLine(Offset.zero, Offset(size.width,size.height), _paint..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
