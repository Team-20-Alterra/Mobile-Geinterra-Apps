import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/register/register_page.dart';

class SyaratScreen extends StatefulWidget {
  const SyaratScreen({super.key});

  @override
  State<SyaratScreen> createState() => _SyaratScreenState();
}

class _SyaratScreenState extends State<SyaratScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff297061),
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => RegisterPage()));
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Syarat dan Ketentuan',
              style: heading6.copyWith(color: primaryGreen),
            ),
            Text(
              'Terahir di perbaharui  22/01/2022',
              style: regular10pt.copyWith(color: textBlack),
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Cause One',
                style: bold.copyWith(color: textBlack),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
                    style: regular14pt.copyWith(color: textBlack),
                    textAlign: TextAlign.justify),
              ),
              Text(
                '1. Cause One',
                style: bold.copyWith(color: textBlack),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
                    style: regular14pt.copyWith(color: textBlack),
                    textAlign: TextAlign.justify),
              ),
              Text(
                '1. Cause One',
                style: bold.copyWith(color: textBlack),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem.',
                    style: regular14pt.copyWith(color: textBlack),
                    textAlign: TextAlign.justify),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
