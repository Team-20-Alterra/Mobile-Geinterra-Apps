import 'package:flutter/material.dart';
import 'package:geinterra_apps/providers/profile_view_model.dart';
import 'package:geinterra_apps/providers/register_view_model.dart';
import 'package:geinterra_apps/ui/home/provider/home_provider.dart';
import 'package:geinterra_apps/ui/onboarding/onboarding.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/detail_pembayaran.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RegisterViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnboardingPage(),
        onGenerateRoute: (settings) => configRouters(settings),
      ),
    );
  }
}
