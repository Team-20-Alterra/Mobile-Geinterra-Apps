import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_page.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';

MaterialPageRoute? configRouters(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case RegisterPage.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
