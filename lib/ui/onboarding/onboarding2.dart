import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
      color: const Color(0xffF2F2F2),
      child: Column(
        children: const [
          Image(image: AssetImage('assets/page2.jpg')),
          SizedBox(
            height: 30,
          ),
          Text(
            'Akses Invoice dengan Mudah',
            style: TextStyle(fontSize: 25, fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
