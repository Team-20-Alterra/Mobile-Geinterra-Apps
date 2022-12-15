import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';

class DetailPembayaran extends StatefulWidget {
  static const routeName = '/detailpembayaran';

  const DetailPembayaran({super.key});

  @override
  State<DetailPembayaran> createState() => _DetailPembayaranState();
}

class _DetailPembayaranState extends State<DetailPembayaran> {
  bool isLoading = false;
  PlatformFile? pickedFile;
  File? fileToDisplay;
  File? filePath;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            GestureDetector(
              onTap: () {
                setState(() {
                  buildItem();
                });
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
                child: Padding(
                  padding: EdgeInsets.all(16.0),
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
            ),
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
                      Icons.arrow_drop_down,
                      size: 24.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // buildItem(),
            // SizedBox(
            //   height: 12.0,
            // ),
            // buildPembayaran(),
            Spacer(),
            buildFilePicker(),
            _buttonkirim(),
          ],
        ),
      ),
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
        // EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
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
            Text(
              '1. Pilih Transfer > Virtual Account Billing',
              style: regular14pt.copyWith(color: textBlack),
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

  Widget buildFilePicker() {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        _pickFile();
      },
      child: DottedBorder(
        dashPattern: [5, 5],
        radius: Radius.circular(15.0),
        borderType: BorderType.RRect,
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
                'Kirim Bukti Bayar',
                style: semibold16pt.copyWith(color: textBlack),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonkirim() {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: size.height * 0.06,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton(
          onPressed: () {},
          // pickedFile != null
          //     ? () {
          //         if (isButtonActive) {}
          //       }
          //     : null,
          style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
          child: Text(
            'Kirim',
            style: semibold16pt.copyWith(color: textWhite),
          ),
        ),
      ),
    );
  }

  void _pickFile() async {
    setState(() {
      isLoading = true;
    });
    final result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['png | jpg']);
    if (result != null) {
      pickedFile = result.files.first;
      fileToDisplay = File(pickedFile!.path.toString());
    }

    setState(() {
      isLoading = false;
    });
  }

// //fungsi untuk select file
//   void selectFile() async {
//     FilePickerResult? result = await FilePicker.platform
//         .pickFiles(type: FileType.custom, allowedExtensions: ['jpg | png']);
//     if (result != null) {
//       setState(() {
//         pickedFile = result.files.first;
//         fileToDisplay = File(pickedFile!.path.toString());
//       });
//     } else {
//       // User canceled the picker
//     }
//   }

// //fungsi untuk validasi dan simpan
//   void _validateInputs() {
//     if (_formKey.currentState!.validate()) {
//       //If all data are correct then save data to out variables
//       _formKey.currentState!.save();
//       simpan();
//     }
//   }

//   simpan() async {
//     final String nama = txtEditNama.text; //txtNama;
//     var rawTgl = txtDate.text.split("/");
//     var yM = rawTgl[2];
//     var mM = rawTgl[1];
//     var dM = rawTgl[0];
//     final String tgl = yM + "-" + mM + "-" + dM;

//     try {
//       //post date
//       Map<String, String> headers = {
//         'Content-Type': 'application/json; charset=UTF-8',
//       };
//       var request = http.MultipartRequest(
//           'POST', Uri.parse('https://api.sobatcoding.com/testing/upload'));

//       request.headers.addAll(headers);
//       request.fields['nama'] = nama;
//       request.fields['tgl'] = tgl;

//       request.files.add(http.MultipartFile('file',
//           filePickerVal!.readAsBytes().asStream(), filePickerVal!.lengthSync(),
//           filename: filePickerVal!.path.split("/").last));

//       var res = await request.send();
//       var responseBytes = await res.stream.toBytes();
//       var responseString = utf8.decode(responseBytes);

//       //debug
//       debugPrint("response code: " + res.statusCode.toString());
//       debugPrint("response: " + responseString.toString());

//       final dataDecode = jsonDecode(responseString);
//       debugPrint(dataDecode.toString());

//       if (res.statusCode == 200) {
//         return showDialog<void>(
//           context: context,
//           barrierDismissible: false, // user must tap button!
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: const Text('Informasi'),
//               content: SingleChildScrollView(
//                 child: ListBody(
//                   children: const <Widget>[
//                     Text("File berhasil diupload"),
//                   ],
//                 ),
//               ),
//               actions: [
//                 TextButton(
//                   child: const Text('OK'),
//                   onPressed: () {
//                     //
//                     Navigator.of(context, rootNavigator: false).pop();
//                   },
//                 ),
//               ],
//             );
//           },
//         );
//       } else {}
//     } catch (e) {
//       debugPrint('$e');
//     }
//   }
}
