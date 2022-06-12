import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/landing_screen/landing_screen.dart';
import 'route_names.dart';

class AppRouter {
  static RouteFactory routes() {
    return ((settings) {
      // dynamic argument = settings.arguments;
      Widget screen;

      if (settings.name == homeScreenRoute) {
        screen = const HomeScreen();

        // screen = HomeScreen();
      } else if (settings.name == landingScreenRoute) {
        screen = const LandingScreen();
      } else {
        return null;
      }
      return MaterialPageRoute(
        builder: (BuildContext context) => screen,
        settings: settings,
      );
    });
  }
}
