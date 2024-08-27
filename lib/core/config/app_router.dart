
import 'package:flutter/material.dart';
import 'package:newsappnew/core/config/page_routes_name.dart';
import 'package:newsappnew/features/home/pages/home_view.dart';

import '../../features/splash/pages/splash_view.dart';


class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PageRoutesName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}