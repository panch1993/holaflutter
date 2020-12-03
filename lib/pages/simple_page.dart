import 'package:flutter/material.dart';

class SimplePageWidget extends StatelessWidget {
  final info;
  SimplePageWidget({Key key, @required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(info.toString()),
    );
  }
}
