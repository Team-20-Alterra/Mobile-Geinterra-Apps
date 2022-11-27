import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class MyTab extends StatelessWidget {
  const MyTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: MyColors.greenColor),
      ),
    );
  }
}
