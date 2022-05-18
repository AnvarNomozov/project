import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/views/home_view.dart';

class MyRoutes {
  Route? onGeneraRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case "/home":
        return MaterialPageRoute(builder: (_) => HomeView());
    }
  }
}
