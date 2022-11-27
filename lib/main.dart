import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:geinterra_apps/ui/utils/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
      onGenerateRoute: (settings) => configRouters(settings),
    );
  }
}
