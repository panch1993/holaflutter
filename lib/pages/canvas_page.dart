import 'package:flutter/material.dart';
import 'package:hola_flutter/painters/easy_painter.dart';

class CanvasPage extends StatelessWidget {
  CanvasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: EasyPainter(),
      ),
    );
  }
}
