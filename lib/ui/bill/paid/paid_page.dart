import 'package:flutter/material.dart';

import '../../home/widgets/item_invoice.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(16),
        children: [_listTransaction(context)]);
  }

  Widget _listTransaction(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'assets/icon_filter.png',
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
        const ItemTransaction(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
