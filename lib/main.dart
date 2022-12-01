import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';
import 'package:geinterra_apps/ui/splash_screen/landing_page.dart';
import 'package:geinterra_apps/ui/utils/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
      onGenerateRoute: (settings) => configRouters(settings),
    );
  }
}
