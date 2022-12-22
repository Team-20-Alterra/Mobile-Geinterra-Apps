import 'package:flutter/material.dart';
import 'package:geinterra_apps/data/model/invoice_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:geinterra_apps/ui/home/provider/home_provider.dart';
import 'package:geinterra_apps/ui/notification/notif.dart';
import 'package:geinterra_apps/ui/widgets/circle_img_asset.dart';
import 'package:geinterra_apps/ui/widgets/title_section.dart';
import 'package:provider/provider.dart';

import '../utils/result_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context, listen: true);
    final listHome = homeProvider.invoice;

    return SafeArea(
      child: ListView(
        children: [
          _header(context),
          const SizedBox(
            height: 24,
          ),
          _articel(context),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: TitleSection(title: 'Transaksi belum dibayar'),
          ),
          // ListView.builder(
          //     itemCount: 20,
          //     itemBuilder: (context, index) {
          //       return _buildstatus(listHome?.invoices?[index], context);
          //     })
          Consumer<HomeProvider>(
            builder: (contex, provider, _) {
              switch (provider.state) {
                case ResultState.Success:
                  if (provider.list.isEmpty) {
                    return _emptyView(context);
                  } else {
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, position) {
                        return _buildstatus(listHome?.data?[position], context);
                        // return Padding(
                        //   padding: const EdgeInsets.only(bottom: 16),
                        //   child: ItemTransaction(
                        //     invoice: provider.list[position],
                        //   ),
                        // );
                      },
                      padding: const EdgeInsets.all(16),
                    );
                  }
                case ResultState.Loading:
                  return const SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Center(child: CircularProgressIndicator()),
                  );
                case ResultState.Error:
                  return Center(child: Text(provider.message));
                default:
                  return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildstatus(Data? data, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Image(
            alignment: Alignment.topLeft,
            image: AssetImage(
              'assets/item_img.png',
            ),
            width: 56,
            height: 56,
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Geprek Bensu Wakanda',
                      style: medium12pt.copyWith(color: textBlack),
                    ),
                    Text(
                      'Rp37.000',
                      style: medium12pt.copyWith(color: textBlack),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'No. Invoice',
                      style: regular11pt.copyWith(color: textBlack),
                    ),
                    Text(
                      'Menunggu  Konfirmasi',
                      style: regular11pt.copyWith(color: primaryError6),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _emptyView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
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
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
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
                    width: 160,
                    height: 110,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/gambar1.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    width: 160,
                    height: 110,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/gambar2.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    width: 160,
                    height: 110,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/gambar1.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    width: 160,
                    height: 110,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/gambar2.png')),
                        shape: BoxShape.rectangle,
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(16)))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
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
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotifPage()));
            },
            icon: Icon(Icons.notifications_outlined),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(60, 60)),
            ),
          ),
        ],
      ),
    );
  }
}
