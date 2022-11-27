import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/profile/kebijakan.dart';
import 'package:geinterra_apps/ui/profile/profile_page.dart';
import 'package:geinterra_apps/ui/profile/sk_page.dart';
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
    case SyaratKetentuanPage.routeName:
      return MaterialPageRoute(builder: (_) => const SyaratKetentuanPage());
    case KebijakanPage.routeName:
      return MaterialPageRoute(builder: (_) => const KebijakanPage());
    case MainPage.routeName:
      return MaterialPageRoute(builder: (_) => const MainPage());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
