import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';
import 'package:geinterra_apps/ui/payment/payment_status.dart';

class OnboardingStart extends StatelessWidget {
  const OnboardingStart({super.key});

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
                      image: DecorationImage(image: ExactAssetImage('assets/final.png')),
                      borderRadius: BorderRadius.circular(20),
                      ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Notifikasi Real Time Setiap Pembayaran', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),),
              ),
              //Description
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.'),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(110, 35),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 41, 112, 97),
                    
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));
                }, child: const Text('Mulai')),
              )

            ],
          ),
        ),
      ),
    );
  }
}
