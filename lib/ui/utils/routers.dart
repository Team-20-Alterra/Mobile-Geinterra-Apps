import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';

MaterialPageRoute? configRouters(RouteSettings settings) {
  switch (settings.name) {
    case RegisterPage.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case MetodePembayaran.routeName:
      return MaterialPageRoute(builder: (_) => const MetodePembayaran());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
