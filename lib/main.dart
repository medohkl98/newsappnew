import 'package:flutter/material.dart';
import 'package:newsappnew/core/config/app_router.dart';
import 'package:newsappnew/core/config/page_routes_name.dart';
import 'package:newsappnew/core/theme/app_theme_manager.dart';

void main() {
  runApp(const MyApp());

  // ApiManager.fetchSourcesList("sports");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: AppThemeManager.themeData,
      initialRoute: PageRoutesName.initial,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}


