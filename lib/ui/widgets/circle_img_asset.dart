import 'package:flutter/material.dart';

class CircleImgAsset extends StatelessWidget {
  const CircleImgAsset(
      {Key? key,
      required this.width,
      required this.height,
      required this.asset})
      : super(key: key);
  final double width;
  final double height;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(shape: BoxShape.circle),
      width: width,
      height: height,
      child: Image.asset(asset),
    );
  }
}
