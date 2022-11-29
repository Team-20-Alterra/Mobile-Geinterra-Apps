import 'package:flutter/material.dart';

class ShapeIcon extends StatelessWidget {
  const ShapeIcon(
      {Key? key, required this.width, required this.height, required this.icon})
      : super(key: key);

  final double width;
  final double height;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)]),
      child: Icon(icon),
    );
  }
}
