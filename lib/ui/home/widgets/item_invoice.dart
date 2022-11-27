import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/widgets/title_description.dart';
import 'package:geinterra_apps/ui/widgets/title_item.dart';

import '../../widgets/circle_img_asset.dart';

class ItemTransaction extends StatelessWidget {
  const ItemTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const CircleImgAsset(
            width: 50, height: 50, asset: 'assets/item_img.png'),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  TitleItem(title: 'Geprek Bensu Wakanda'),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  TitleItem(title: 'Rp. 13.000'),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  TitleDescription(title: 'No. Invoice'),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  ),
                  TitleDescription(title: 'Konfirmasi'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
