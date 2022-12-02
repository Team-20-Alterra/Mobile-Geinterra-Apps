import 'package:flutter/material.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
    );
  }
}
