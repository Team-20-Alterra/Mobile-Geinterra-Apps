import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget succesPay(BuildContext context) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: 100,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Pembayaran Berhasil',
            style: TextStyle(
                color: Colors.green.shade400,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const Text('Transaksimu akan segera diproses.')
        ],
      ),
    ),
  );
}
