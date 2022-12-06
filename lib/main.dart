import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/detail_pembayaran.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';
import 'package:geinterra_apps/ui/utils/routers.dart';
import 'package:provider/provider.dart';

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
      home: LoginPage(),
      onGenerateRoute: (settings) => configRouters(settings),
    );
  }
}
