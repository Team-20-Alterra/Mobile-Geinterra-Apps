import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/Response_invoices.dart';
import 'package:geinterra_apps/ui/widgets/title_description.dart';
import 'package:geinterra_apps/ui/widgets/title_item.dart';

import '../../detail_invoice/detail_invoice.dart';
import '../../widgets/circle_img_asset.dart';

class ItemTransaction extends StatelessWidget {
  const ItemTransaction({Key? key, required this.invoice}) : super(key: key);
  final Invoice invoice;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailInvoice.routeName);
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const CircleImgAsset(
              width: 50, height: 50, asset: 'assets/invoice.png'),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const TitleItem(title: "Semabarang"),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    TitleItem(title: invoice.price.toString()),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    TitleDescription(title: invoice.noInvoice),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    TitleDescription(title: invoice.status),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
