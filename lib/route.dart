import 'package:flutter/material.dart';
import './entrance.dart';
import './test.dart';

// 配置路由
final routes = {
  '/': (context) => Entrance(),
  '/test': (context) => TestPage(),
};

// 固定写法 用以传递参数
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function PageContentBuilder = routes[name];
  if (PageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              PageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => PageContentBuilder(context));
      return route;
    }
  }
};
