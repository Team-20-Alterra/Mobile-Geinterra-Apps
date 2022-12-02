import 'package:flutter/material.dart';

import '../../theme.dart';

class HorizontalText extends StatelessWidget {
  const HorizontalText(
      {Key? key, required this.startText, required this.endText, this.style})
      : super(key: key);
  final String startText;
  final String endText;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          startText,
          style: style ?? regular12pt,
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Text(
          endText,
          style: style ?? regular12pt,
        ),
      ],
    );
  }
}
