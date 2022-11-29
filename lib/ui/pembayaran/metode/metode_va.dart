import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';

class MetodeVA extends StatefulWidget {
  const MetodeVA({super.key});

  @override
  State<MetodeVA> createState() => _MetodeVAState();
}

enum VirtualAkun { BNI, BCA, BRI, Mandiri, CIMB }

class _MetodeVAState extends State<MetodeVA> {
  var radioValue = '';

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
              'Metode Pembayaran Virtual Akun',
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
              child: RadioListTile<String>(
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
                value: 'BNI VA',
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BNI VA',
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
              child: RadioListTile<String>(
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
                value: 'BCA VA',
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BCA VA',
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
              child: RadioListTile<String>(
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
                value: 'BRI VA',
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'BRI VA',
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
              child: RadioListTile<String>(
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
                value: 'Mandiri VA',
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'Mandiri VA',
                  style: semibold16pt.copyWith(color: textBlack),
                ),
              ),
            ),
            // CIMB
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
              child: RadioListTile<String>(
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
                value: 'CIMB VA',
                groupValue: radioValue,
                onChanged: (value) {
                  setState(
                    () {
                      radioValue = value ?? '';
                    },
                  );
                },
                activeColor: primaryGreen,
                title: Text(
                  'CIMB VA',
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: button),
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
