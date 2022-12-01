import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geinterra_apps/ui/splash_screen/onboarding/onboard_second_page.dart';

class OnboardFirstPage extends StatelessWidget {
  const OnboardFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: ExactAssetImage('assets/one.png')),
                      borderRadius: BorderRadius.circular(20),
                      ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Manajemen Tagihan mu Dengan Ginap',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
              ),
              //Description
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.'),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnboardSecondPage();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Lanjut',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.navigate_next_outlined)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
