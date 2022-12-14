import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/widget/navbar_widget.dart';

class DetailPembayaran extends StatefulWidget {
  static const routeName = '/detailpembayaran';
  const DetailPembayaran({Key? key}) : super(key: key);

  @override
  State<DetailPembayaran> createState() => _DetailPembayaranState();
}

class _DetailPembayaranState extends State<DetailPembayaran> {
  bool isPembayaranshow = false;
  bool isDetail = false;

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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Detail Pembayaran',
          style: heading6.copyWith(color: primaryGreen),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Sisa Waktu
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
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sisa Waktu Pembayaran',
                      style: heading8.copyWith(color: textBlack),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '01',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                            Text(
                              'Jam',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '06',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                            Text(
                              'Menit',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '10',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                            Text(
                              'Detik',
                              style: medium14pt.copyWith(color: primaryEror),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'Selesaikan Pembayaran sebelum 19.00',
                      style: medium12pt.copyWith(color: textBlack),
                    ),
                    Text(
                      '2 November 2022',
                      style: medium12pt.copyWith(color: textBlack),
                    ),
                  ],
                ),
              ),
            ),
            // Metode Pembayaran
            SizedBox(height: 12.0),
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
                  // Bank
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
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
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kode Pembayaran',
                              style: regular10pt.copyWith(color: textBlack),
                            ),
                            Text(
                              '1209303718200192',
                              style: semibold18pt.copyWith(color: textBlack),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.copy,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Detail Pembayaran
            SizedBox(height: 12.0),
            InkWell(
              onTap: () {
                setState(() {
                  isDetail = !isDetail;
                });
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
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
                    Text(
                      'Detail Pembelian',
                      style: regular14pt.copyWith(color: textBlack),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            if (isDetail) buildItem(),
            // Total Harga
            SizedBox(height: 12.0),
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
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Harga',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'Rp. 37.000',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Biaya Admin',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                        Text(
                          'Gratis',
                          style: regular14pt.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: heading6.copyWith(color: textBlack),
                        ),
                        Text(
                          'Rp. 37.000',
                          style: heading6.copyWith(color: textBlack),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Cara Pembayaran
            SizedBox(height: 12.0),
            InkWell(
              onTap: () {
                setState(() {
                  isPembayaranshow = !isPembayaranshow;
                });
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
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
                    Text(
                      'Cara Pembayaran',
                      style: regular14pt.copyWith(color: textBlack),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            if (isPembayaranshow) buildPembayaran(),
          ],
        ),
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }

  Widget buildItem() {
    return Container(
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
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ITEMS',
              style: heading6.copyWith(color: textBlack),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ayam geprek - spesial',
                  style: regular12pt.copyWith(color: textBlack),
                ),
                Text(
                  'Rp25.000',
                  style: regular12pt.copyWith(color: textBlack),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '1 X Rp25.000',
              style: regular12pt.copyWith(color: textGrey),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Teh Pucuk',
                  style: regular12pt.copyWith(color: textBlack),
                ),
                Text(
                  'Rp12.000',
                  style: regular12pt.copyWith(color: textBlack),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              '2 X Rp6.000',
              style: regular12pt.copyWith(color: textGrey),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Diskon',
                  style: regular12pt.copyWith(color: textBlack),
                ),
                Text(
                  '(0)',
                  style: regular12pt.copyWith(color: textBlack),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPembayaran() {
    return Container(
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
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '1. Pilih ',
                  style: regular14pt.copyWith(color: textBlack),
                ),
                Text(
                  'Transfer > Virtual Account Billing',
                  style: bold.copyWith(color: textBlack),
                ),
              ],
            ),
            Text(
              '2. Pilih Rekening Debet > Masukkan nomor Virtual Account 1209303718200192 pada menu Input Baru',
              style: regular14pt.copyWith(color: textBlack),
            ),
            Text(
              '3. Tagihan yang harus dibayar akan muncul pada layar konfirmasi',
              style: regular14pt.copyWith(color: textBlack),
            ),
          ],
        ),
      ),
    );
  }
}
