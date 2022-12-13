import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:geinterra_apps/ui/pembayaran/metode/metode_pembayaran.dart';
import 'package:dotted_border/dotted_border.dart';

class NavbarWidget extends StatefulWidget {
  NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  PlatformFile? pickedFile;
  File? fileToDisplay;
  bool isLoading = false;
  bool isButton = true;
  bool isGambar = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      // padding: EdgeInsets.all(16.0),
      width: double.infinity,
      height: 140.0,
      child: Column(
        children: [
          buildFilePicker(),
          buttonkirim(),
        ],
      ),
    );
  }

  Widget buildFilePicker() {
    FilePickerResult? result;
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : GestureDetector(
            onTap: () {
              setState(() {
                isGambar = !isGambar;
              });
              if (isGambar != null) {
                _pickFile();
              }
              result?.files.forEach((element) {
                print(element.name);
              });
            },
            // onTap: () async {
            //   _pickFile();
            //   // setState(() {
            //   //   result?.files.forEach((element) {
            //   //     print(element.name);
            //   //   });
            //   // });
            // },
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
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  void _pickFile() async {
    setState(() {
      isLoading = true;
    });
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'png'],
    );

    if (result != null) {
      pickedFile = result.files.first;
      fileToDisplay = File(pickedFile!.path.toString());
    }

    setState(() {
      isLoading = false;
    });

    if (result == null) {
      print("No file selected");
    } else {
      setState(() {});
      result?.files.forEach((element) {
        print(element.name);
      });
    }
  }

  Widget buttonkirim() {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: size.height * 0.06,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton(
          onPressed: pickedFile != null
              ? () {
                  if (isButton) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MetodePembayaran(),
                      ),
                    );
                  }
                }
              : null,
          style: ElevatedButton.styleFrom(backgroundColor: primaryGreen),
          child: Text(
            'Kirim',
            style: semibold16pt.copyWith(color: textWhite),
          ),
        ),
      ),
    );
  }
}
