import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020/5/1
/// contact me by email 1981462002@qq.com
/// 说明:
@immutable
class Coordinate {
  final double step;
  final double strokeWidth;
  final Color axisColor;
  final Color gridColor;

  Coordinate(
      {this.step = 20,
        this.strokeWidth = .5,
        this.axisColor = Colors.blue,
        this.gridColor = Colors.grey});

  final Paint _gridPaint = Paint();

  void paint(Canvas canvas, Size size) {
    canvas.save();
    canvas.translate(size.width / 2, size.height / 2);
    _drawGridLine(canvas, size);
   _drawAxis(canvas, size);
    canvas.restore();
  }

  void _drawAxis(Canvas canvas, Size size) {
    _gridPaint
      ..color = Colors.blue
      ..strokeWidth = 1.5;
    canvas.drawLine(
        Offset(-size.width / 2, 0), Offset(size.width / 2, 0), _gridPaint);
    canvas.drawLine(
        Offset(0, -size.height / 2), Offset(0, size.height / 2), _gridPaint);
    canvas.drawLine(Offset(0, size.height / 2),
        Offset(0 - 7.0, size.height / 2 - 10), _gridPaint);
    canvas.drawLine(Offset(0, size.height / 2),
        Offset(0 + 7.0, size.height / 2 - 10), _gridPaint);
    canvas.drawLine(
        Offset(size.width / 2, 0), Offset(size.width / 2 - 10, 7), _gridPaint);
    canvas.drawLine(
        Offset(size.width / 2, 0), Offset(size.width / 2 - 10, -7), _gridPaint);
  }
  void _drawGridLine(Canvas canvas, Size size) {
    _gridPaint
      ..style = PaintingStyle.stroke
      ..strokeWidth = .5
      ..color = Colors.grey;
    var _gridPath = Path();
    for (int i = 0; i < size.width / 2 / step; i++) {
      _gridPath.moveTo(step * i, -size.height / 2 );
      _gridPath.relativeLineTo(0, size.height);
      _gridPath.moveTo(-step * i, -size.height / 2 );
      _gridPath.relativeLineTo(0, size.height);
    }

    for (int i = 0; i < size.height / 2 / step; i++) {
      _gridPath.moveTo(-size.width / 2,step * i );
      _gridPath.relativeLineTo(size.width,0 );
      _gridPath.moveTo(-size.width / 2,-step * i,  );
      _gridPath.relativeLineTo(size.width,0 );

    }
    canvas.drawPath(_gridPath, _gridPaint);
  }
}