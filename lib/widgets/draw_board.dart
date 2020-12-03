import 'package:flutter/material.dart';

//画板
class DrawBoardWidget extends StatefulWidget {
  DrawBoardWidget({Key key}) : super(key: key);

  @override
  _DrawBoardWidgetState createState() {
    return _DrawBoardWidgetState();
  }
}

class _DrawBoardWidgetState extends State<DrawBoardWidget> {
  //当前点
  final ValueNotifier<Offset> _offset = ValueNotifier(Offset.zero);
  DrawBoardPainter _drawBoardPainter;

  //绘制轨迹
  Path _path;

  @override
  Widget build(BuildContext context) {
    _drawBoardPainter = DrawBoardPainter(offset: _offset);
    return CustomPaint(
      painter: _drawBoardPainter,
      child: GestureDetector(
        onPanDown: resetOffset,
        onPanUpdate: updatePath,
        onLongPress: () {
          _drawBoardPainter._pathList.clear();
          _drawBoardPainter.offset.value = Offset.zero;
        },
      ),
    );
  }

  resetOffset(DragDownDetails details) {
    final offset = details.localPosition;
    _path = Path()..moveTo(offset.dx, offset.dy);
    _drawBoardPainter.addPath(_path);
    _offset.value = offset;
  }

  updatePath(DragUpdateDetails details) {
    final offset = details.localPosition;
    _path.lineTo(offset.dx, offset.dy);
    _offset.value = offset;
  }
}

class DrawBoardPainter extends CustomPainter {
  final _pathList = List();
  final ValueNotifier<Offset> offset;
  var _paint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2;
  var _paintBg = Paint()..color = Colors.blueGrey;

  DrawBoardPainter({this.offset}) : super(repaint: offset);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Offset.zero & size, _paintBg);
    canvas.drawCircle(offset.value, 10, _paint);
    for (var value in _pathList) {
      Path path = value;
      canvas.drawPath(path, _paint);
    }
  }

  @override
  bool shouldRepaint(covariant DrawBoardPainter oldDelegate) =>
      oldDelegate.offset != offset || oldDelegate._pathList.length != _pathList.length;

  void addPath(Path path) {
    _pathList.add(path);
  }
}
