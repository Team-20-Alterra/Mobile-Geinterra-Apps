import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/bantuan/bantuan_pembayaran.dart';

class BantuanVA extends StatefulWidget {
  const BantuanVA({super.key});

  @override
  State<BantuanVA> createState() => _BantuanVAState();
}

class _BantuanVAState extends State<BantuanVA> {
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
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Bantuan()));
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bantuan',
              style: heading6.copyWith(color: primaryGreen),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: primaryGrey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[Metode Pembayaran - Virtual Akun]',
                          style: semibold16pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'Bagaimana Cara Membayar Tagihan melalui Virtual Akun?',
                          style: semibold16pt.copyWith(color: textBlack),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          '1. Lorem ipsum dolor sit amet, adipiscing elit.',
                          style: regular16pt.copyWith(color: textBlack),
                        ),
                        Text(
                          '2. Lorem ipsum dolor sit amet, adipiscing elit.',
                          style: regular16pt.copyWith(color: textBlack),
                        ),
                        Text(
                          '3. Lorem ipsum dolor sit amet, adipiscing elit.',
                          style: regular16pt.copyWith(color: textBlack),
                        ),
                        Text(
                          '4. Lorem ipsum dolor sit amet, adipiscing elit.',
                          style: regular16pt.copyWith(color: textBlack),
                        ),
                        Text(
                          '5. Lorem ipsum dolor sit amet, adipiscing elit.',
                          style: regular16pt.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
