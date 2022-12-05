import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/bantuan/detail_bantuan_bank.dart';
import 'package:geinterra_apps/ui/pembayaran/bantuan/detail_bantuan_va.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';

class Bantuan extends StatefulWidget {
  const Bantuan({super.key});

  @override
  State<Bantuan> createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                MaterialPageRoute(builder: (context) => MetodePembayaran()));
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
            Text(
              'FAQ',
              style: heading6.copyWith(color: textBlack),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: primaryGrey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              child: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[Metode Pembayaran - Rekening Bank]',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'Bagaimana Cara Membayar Tagihan',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'melalui Rekening Bank?',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      size: 24.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BantuanBank()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: primaryGrey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
              ),
              child: Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[Metode Pembayaran - Virtual Akun]',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'Bagaimana Cara Membayar Tagihan',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'melalui Virtual Akun?',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      size: 24.0,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BantuanVA()));
                    },
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
