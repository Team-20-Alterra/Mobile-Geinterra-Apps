import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/profile/profile_page.dart';
import 'package:geinterra_apps/ui/profile/ubah_akun_page.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';

MaterialPageRoute? configRouters(RouteSettings settings) {
  switch (settings.name) {
    case RegisterPage.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case ProfilePage.routeName:
      return MaterialPageRoute(builder: (_) => const ProfilePage());
    case UbahAkunPage.routeName:
      return MaterialPageRoute(builder: (_) => const UbahAkunPage());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
