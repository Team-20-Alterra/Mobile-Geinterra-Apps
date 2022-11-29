import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/home/widgets/item_invoice.dart';
import 'package:geinterra_apps/ui/home/widgets/shape_icon.dart';
import 'package:geinterra_apps/ui/widgets/circle_img_asset.dart';
import 'package:geinterra_apps/ui/widgets/title_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: ListView(padding: const EdgeInsets.all(16), children: [
          _header(context),
          const SizedBox(
            height: 24,
          ),
          _articel(context),
          const SizedBox(
            height: 16,
          ),
          _listTransaction(context)
        ]),
      ),
    );
  }

  Widget _listTransaction(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TitleSection(title: 'Transaksi belum dibayar'),
        SizedBox(
          height: 16,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
        ItemTransaction(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _emptyView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const TitleSection(title: 'Transaksi belum dibayar'),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/login.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TitleSection(title: 'Semua transaksi sudah dibayar')
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _articel(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSection(title: 'Artikel'),
        const SizedBox(
          height: 24,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                  width: 135,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
              const SizedBox(
                width: 8,
              ),
              Container(
                  width: 135,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
              const SizedBox(
                width: 8,
              ),
              Container(
                  width: 135,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
              const SizedBox(
                width: 8,
              ),
              Container(
                  width: 135,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
              const SizedBox(
                width: 8,
              ),
              Container(
                  width: 135,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(16)))),
            ],
          ),
        )
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Row(
      children: [
        const CircleImgAsset(
            width: 60, height: 60, asset: 'assets/icon_user.jpg'),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: 'Hello,',
                    style: DefaultTextStyle.of(context).style,
                    children: const [
                  TextSpan(
                      text: ' Ricky',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
            const SizedBox(
              height: 8,
            ),
            const Text('Riky4545'),
          ],
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        const ShapeIcon(
            width: 60, height: 60, icon: Icons.notifications_outlined)
      ],
    );
  }
}
