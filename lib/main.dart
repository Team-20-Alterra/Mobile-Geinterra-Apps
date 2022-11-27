import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_page.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      onGenerateRoute: (settings) => configRouters(settings),
    );
  }
}
