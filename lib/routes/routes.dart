import 'package:flutter/material.dart';

import '../core/error/exceptions.dart';
import '../features/splash/screen/splash_screen.dart';

class RouteGenerator {
  static const String splash = '/';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        throw RouteException('Route not found');
    }
  }
}
