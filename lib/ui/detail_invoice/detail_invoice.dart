import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/widgets/horizontal_text.dart';
import 'package:geinterra_apps/ui/widgets/my_button.dart';

import '../../theme.dart';
import '../widgets/circle_img_asset.dart';
import '../widgets/my_appbar.dart';

class DetailInvoice extends StatelessWidget {
  const DetailInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: "Detail Tagihan", back: () {}),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _sectionTitle(context),
                _sectionInvoiceId(context),
                _sectionItems(context),
                _sectionTagihan(context)
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.all(16),
              child: MyButton(title: "Pay Now", onClick: () {})),
        ],
      ),
    );
  }

  Widget _sectionTagihan(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const HorizontalText(startText: 'Total Diskon', endText: '(0)'),
        const SizedBox(
          height: 10,
        ),
        HorizontalText(
          startText: 'Total Bayar',
          endText: 'Rp37.000',
          style: heading6.copyWith(color: textBlack),
        ),
      ],
    );
  }

  Widget _sectionItems(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          'ITEMS',
          style: heading6.copyWith(color: textBlack),
        ),
        _itemView(),
        _itemView(),
        _itemView(),
        const SizedBox(
          height: 16,
        ),
        const Divider(
          height: 2,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _itemView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        const HorizontalText(
            startText: 'Ayam geprek - spesial', endText: 'Rp25.000'),
        const SizedBox(
          height: 8,
        ),
        Text(
          '1 X Rp25.000',
          style: regular12pt.copyWith(color: textGrey),
        )
      ],
    );
  }

  Widget _sectionInvoiceId(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 40,
        ),
        HorizontalText(startText: 'ID Invoice', endText: '#000001'),
        SizedBox(
          height: 16,
        ),
        Divider(
          height: 2,
          color: Colors.black,
        ),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: [
        const CircleImgAsset(
            width: 50, height: 50, asset: 'assets/item_img.png'),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Geprek Bensu Wakanda',
          style: regular16pt,
        ),
      ],
    );
  }
}
