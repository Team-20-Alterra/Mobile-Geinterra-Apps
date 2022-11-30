import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/onboarding/onboarding1.dart';
import 'package:geinterra_apps/ui/onboarding/onboarding2.dart';
import 'package:geinterra_apps/ui/onboarding/onboarding3.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = '/onboardingpage';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [OnboardingPage1(), OnboardingPage2(), OnBoardingPage3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Text('Lanjut'),
          )
        ],
      ),
    );
  }
}
