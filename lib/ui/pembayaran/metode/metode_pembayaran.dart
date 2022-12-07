import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/bantuan/bantuan_pembayaran.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_bank.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_va.dart';
import 'package:geinterra_apps/ui/widgets/my_appbar.dart';

class MetodePembayaran extends StatefulWidget {
  static const routeName = '/metodepembayaran';

  const MetodePembayaran({super.key});

  @override
  State<MetodePembayaran> createState() => _MetodePembayaranState();
}

class _MetodePembayaranState extends State<MetodePembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          title: "Metode Pembayaran",
          back: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Metode Pembayaran',
              style: heading6.copyWith(color: textBlack),
            ),
            const SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MetodeBank.routeName);
              },
              child: Container(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Rekening Bank',
                        style: regular14pt.copyWith(color: textBlack),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MetodeVA.routeName);
              },
              child: Container(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Virtual Akun',
                        style: regular14pt.copyWith(color: textBlack),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
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
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Apakah kamu mempunyai masalah pembayaran?',
                      style: regular14pt.copyWith(color: textBlack),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Bantuan()));
                      },
                      child: Text(
                        'Bantuan',
                        style: bold.copyWith(color: textBlue),
                      ),
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
