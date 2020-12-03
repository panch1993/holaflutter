

import 'package:flutter/material.dart';
import 'package:hola_flutter/pages/bottom_page.dart';
import 'package:hola_flutter/pages/canvas_page.dart';
import 'package:hola_flutter/pages/gesture_page.dart';
import 'package:hola_flutter/pages/main_page.dart';
import 'package:hola_flutter/pages/simple_page.dart';

final routes = {
  '/': (context) => MainPage(),
  '/simplePage': (context, {arguments}) => SimplePageWidget(info: arguments),
  '/bottomNavigator': (context) => BottomPageWidget(),
  '/canvas': (context) => CanvasPage(),
  '/gesture': (context) => GesturePage(),
};

/// 动态创建路由
// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
