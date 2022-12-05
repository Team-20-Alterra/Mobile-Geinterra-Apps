import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/login/login_screen.dart';
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

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [OnboardingPage1(), OnboardingPage2(), OnBoardingPage3()],
          ),
          Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff297061)),
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.routeName);
                            },
                            child: Text(
                              'Mulai',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Row(
                            children: const [
                              Text(
                                'Lanjut',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'Poppins'),
                              ),
                              Icon(Icons.navigate_next_rounded),
                            ],
                          ),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
