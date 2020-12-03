import 'package:flutter/material.dart';

class AxisPainter extends CustomPainter {
  // 创建画笔
  final Paint _paint = Paint()
    ..isAntiAlias = true
    ..strokeWidth = 0.5
    ..color = Colors.grey;

  final step = 20.0;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    _drawGrid(canvas, size);
    canvas.restore();
    canvas.drawLine(Offset(0, size.height/2), Offset(size.width, size.height/2), _paint);
    canvas.drawLine(Offset(size.width/2, 0), Offset(size.width/2, size.height), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void _drawBottomRight(Canvas canvas, Size size) {
    canvas.save();
    for (int i = 0; i < size.height / 2 / step; i++) {
      if (i > 0) {
        canvas.drawLine(Offset(0, 0), Offset(size.width / 2, 0), _paint);
      }
      canvas.translate(0, step);
    }
    canvas.restore();

    canvas.save();
    for (int i = 0; i < size.width / 2 / step; i++) {
      if (i > 0) {
        canvas.drawLine(Offset(0, 0), Offset(0, size.height / 2), _paint);
      }
      canvas.translate(step, 0);
    }
    canvas.restore();
  }

  void _drawGrid(Canvas canvas, Size size) {
    _drawBottomRight(canvas, size);
    canvas.save();
    canvas.scale(1, -1); //沿x轴镜像
    _drawBottomRight(canvas, size);
    canvas.restore();

    canvas.save();
    canvas.scale(-1, 1); //沿y轴镜像
    _drawBottomRight(canvas, size);
    canvas.restore();

    canvas.save();
    canvas.scale(-1, -1); //沿原点镜像
    _drawBottomRight(canvas, size);
    canvas.restore();

  }
}
