import 'package:flutter/widgets.dart';
import 'package:gwala_interview/screens/base/base_screen.dart';
import 'package:gwala_interview/screens/home/home_screen.dart';

class RouteManager {
  static final Map<String, WidgetBuilder> routes = {
    BaseScreen.routeName: (context) => const BaseScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
  };
}
