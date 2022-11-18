import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_page.dart';

MaterialPageRoute? configRouters(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
