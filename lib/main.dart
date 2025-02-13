import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/presentation/spash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 
      theme: AppTheme.lighttheme,
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

