import 'package:flutter/material.dart';
import 'package:hola_flutter/widgets/draw_board.dart';
import 'package:hola_flutter/widgets/handle_widget.dart';

class GesturePage extends StatelessWidget {
  GesturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: DrawBoardWidget(

        ),
      ),
    );
  }
}