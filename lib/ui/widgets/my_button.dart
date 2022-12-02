import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/utils/colors.dart';

import '../../theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.title, required this.onClick})
      : super(key: key);
  final String title;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onClick,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.myGreen,
        minimumSize: const Size(double.infinity, 48.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        textStyle: semibold12pt.copyWith(color: textWhite),
      ),
      child: Text(title),
    );
  }
}
