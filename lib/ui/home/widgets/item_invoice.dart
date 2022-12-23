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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailInvoice()),
        );
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
                    TitleItem(title: "PT Kita bisa ${invoice.id}"),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    TitleItem(
                        title:
                            "Rp. ${invoice.total == 0 ? 100000 : invoice.total}"),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    TitleDescription(title: "#000${invoice.id}"),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    TitleDescription(
                        title: invoice.status == ""
                            ? "Menunggu Konfirmasi"
                            : invoice.status),
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
