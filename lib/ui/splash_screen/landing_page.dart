import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/splash_screen/onboarding/onboard_first_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';
import 'package:geinterra_apps/ui/splash_screen/onboarding/onboarding_start.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      pageTransitionType: PageTransitionType.fade,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        splash: const Center(
          child: Text(
            'Ginap',
            style: TextStyle(
                color: Color.fromARGB(255, 41, 112, 97), fontWeight: FontWeight.w700, fontSize: 30),
          ),
        ),
        nextScreen: const OnboardFirstPage());
  }
}
