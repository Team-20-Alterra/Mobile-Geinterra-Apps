import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.account_circle_outlined,
          size: 160.0,
        ),
      ],
    );
  }
}
