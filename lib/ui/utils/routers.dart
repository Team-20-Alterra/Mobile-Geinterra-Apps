import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/main_page.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
import 'package:geinterra_apps/ui/onboarding/onboarding.dart';
import 'package:geinterra_apps/ui/payment/payment_status.dart';
import 'package:geinterra_apps/ui/profile/kebijakan.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';
import 'package:geinterra_apps/ui/profile/kebijakan.dart';
import 'package:geinterra_apps/ui/profile/profile_page.dart';
import 'package:geinterra_apps/ui/profile/sk_page.dart';
import 'package:geinterra_apps/ui/profile/ubah_akun_page.dart';
import 'package:geinterra_apps/ui/profile/version.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';

import '../detail_invoice/detail_invoice.dart';
import '../pembayaran/detail/detail_pembayaran.dart';
import '../pembayaran/metode/metode_bank.dart';
import '../pembayaran/metode/metode_va.dart';

MaterialPageRoute? configRouters(RouteSettings settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(builder: (_) => const MainPage());
    case RegisterPage.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
    case LoginPage.routeName:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case MetodePembayaran.routeName:
      return MaterialPageRoute(builder: (_) => const MetodePembayaran());
    case ProfilePage.routeName:
      return MaterialPageRoute(builder: (_) => const ProfilePage());
    case UbahAkunPage.routeName:
      return MaterialPageRoute(builder: (_) => const UbahAkunPage());
    case SyaratKetentuanPage.routeName:
      return MaterialPageRoute(builder: (_) => const SyaratKetentuanPage());
    case KebijakanPage.routeName:
      return MaterialPageRoute(builder: (_) => const KebijakanPage());
    case VersionPage.routeName:
      return MaterialPageRoute(builder: (_) => const VersionPage());
    case OnboardingPage.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardingPage());
    case DetailInvoice.routeName:
      return MaterialPageRoute(builder: (_) => const DetailInvoice());
    case DetailPembayaran.routeName:
      return MaterialPageRoute(builder: (_) => const DetailPembayaran());
    case MetodeBank.routeName:
      return MaterialPageRoute(builder: (_) => const MetodeBank());
    case MetodeVA.routeName:
      return MaterialPageRoute(builder: (_) => const MetodeVA());
    case PaymentStatus.routeName:
      return MaterialPageRoute(builder: (_) => const PaymentStatus());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
