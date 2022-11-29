import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
    );
  }
}
