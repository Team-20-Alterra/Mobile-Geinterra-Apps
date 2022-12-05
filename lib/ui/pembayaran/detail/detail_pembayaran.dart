import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_bank.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_va.dart';

class DetailPembayaran extends StatefulWidget {
  static const routeName = '/detailpembayaran';
  const DetailPembayaran({super.key});

  @override
  State<DetailPembayaran> createState() => _DetailPembayaranState();
}

class _DetailPembayaranState extends State<DetailPembayaran> {
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
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style: heading6.copyWith(color: primaryGreen),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mandiri
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
              // child: RadioListTile<String>(
              //   secondary: Container(
              //     height: 40,
              //     width: 40,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(16.0),
              //       image: DecorationImage(
              //         image: AssetImage('assets/mandiri.png'),
              //         fit: BoxFit.contain,
              //       ),
              //     ),
              //   ),
              //   controlAffinity: ListTileControlAffinity.trailing,
              //   value: 'Mandiri',
              //   groupValue: radioValue,
              //   onChanged: (value) {
              //     setState(
              //       () {
              //         radioValue = value ?? '';
              //       },
              //     );
              //   },
              //   activeColor: primaryGreen,
              //   title: Text(
              //     'Mandiri',
              //     style: semibold16pt.copyWith(color: textBlack),
              //   ),
              // ),
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
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            image: DecorationImage(
                              image: AssetImage('assets/BNI.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'BANK BNI',
                        style: heading8.copyWith(color: textBlack),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Kode Pembayaran',
                              style: regular10pt.copyWith(color: textBlack),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              '1209303718200192',
                              style: semibold18pt.copyWith(color: textBlack),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.copy_outlined,
                        size: 24.0,
                      ),
                    ],
                  ),
                ],
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Total Harga',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Rp. 37.000',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Biaya Admin',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Gratis',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Total Pembayaran',
                          style: heading6.copyWith(color: textBlack),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Rp. 37.000',
                          style: heading6.copyWith(color: textBlack),
                        ),
                      ),
                    ],
                  ),
                ],
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Cara Pembayaran',
                      style: regular14pt.copyWith(color: textBlack),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.chevron_right_rounded,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: size.height * 0.06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 24.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Kirim Bayar Bukti',
                        style: semibold16pt.copyWith(color: textWhite),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
