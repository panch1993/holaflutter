import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hola_flutter/routes/app_route.dart';

void main() {
  //全屏显示
  SystemChrome.setEnabledSystemUIOverlays([]);
  // runApp(ColorFiltered(
  //   colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
  //   child: App(),
  // ));
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
    );
  }
}
