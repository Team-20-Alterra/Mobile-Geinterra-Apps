import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/detail/detail_pembayaran.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';

class MetodeBank extends StatefulWidget {
  static const String routeName = 'methodbank';

  const MetodeBank({super.key});

  @override
  State<MetodeBank> createState() => _MetodeBankState();
}

enum Bank { BNI, BCA, BRI, Mandiri, BSI, Jenius, CIMB }

class _MetodeBankState extends State<MetodeBank> {
  Bank? radioValue;

  bool isButtonActive = true;

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
              'Metode Pembayaran Bank',
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
            // BNI
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
              child: RadioListTile<Bank>(
                secondary: Container(
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
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.BNI,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BNI',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // BCA
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/bca.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.BCA,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BCA',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // BRI
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/bri.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.BRI,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BRI',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/mandiri.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.Mandiri,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'Mandiri',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // BSI
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/bsi.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.BSI,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BSI',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // Jenius / BTPN
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/jenius.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.Jenius,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'Jenius/BTPN',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // CIMB/CIMB Syariah
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
              child: RadioListTile<Bank>(
                secondary: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: AssetImage('assets/CIMB.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                value: Bank.CIMB,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value;
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'CIMB/CIMB Syariah',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total Harga',
              style: regular16pt.copyWith(color: textBlack),
            ),
            Text(
              'Rp. 37.000',
              style: heading10.copyWith(color: textBlack),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: size.height * 0.06,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: radioValue != null
                      ? () {
                          if (isButtonActive) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPembayaran(),
                              ),
                            );
                          }
                        }
                      : null,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryGreen),
                  child: Text(
                    'Lanjutkan',
                    style: semibold16pt.copyWith(color: textWhite),
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
