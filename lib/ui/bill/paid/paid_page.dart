import 'package:flutter/material.dart';
import 'package:geinterra_apps/providers/unpaid_view_model.dart';
import 'package:geinterra_apps/theme.dart';
import 'package:provider/provider.dart';

import '../../../data/model/invoice_model.dart';
import '../../home/provider/home_provider.dart';
import '../../home/widgets/item_invoice.dart';
import '../../utils/result_state.dart';
import '../../widgets/title_section.dart';

class PaidPage extends StatelessWidget {
  const PaidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unpaidProvider = Provider.of<UnpaidViewModel>(context, listen: true);
    final listHome = unpaidProvider.konfirm;
    final isLoading = unpaidProvider.konfirm == ResultState.Loading;

    return Scaffold(
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildstatus(listHome?.data?[index], context);
              },
            ),
    );
    // return ListView(padding: const EdgeInsets.all(16), children: [
    //   Container(
    //     alignment: Alignment.centerRight,
    //     child: Image.asset(
    //       'assets/icon_filter.png',
    //       width: 24,
    //       height: 24,
    //     ),
    //   ),
    //   const SizedBox(
    //     height: 16,
    //   ),
    //   Consumer<HomeProvider>(
    //     builder: (contex, provider, _) {
    //       switch (provider.state) {
    //         case ResultState.Success:
    //           if (provider.list.isEmpty) {
    //             return _emptyView(context);
    //           } else {
    //             return ListView.builder(
    //               scrollDirection: Axis.vertical,
    //               shrinkWrap: true,
    //               physics: const ClampingScrollPhysics(),
    //               itemCount: provider.list.length,
    //               itemBuilder: (context, position) {
    //                 return Padding(
    //                   padding: const EdgeInsets.only(bottom: 16),
    //                   child: ItemTransaction(
    //                     invoice: provider.list[position],
    //                   ),
    //                 );
    //               },
    //               padding: const EdgeInsets.all(16),
    //             );
    //           }
    //         case ResultState.Loading:
    //           return const Center(child: CircularProgressIndicator());
    //         case ResultState.Error:
    //           return Center(child: Text(provider.message));
    //         default:
    //           return const SizedBox();
    //       }
    //     },
    //   ),
    // ]);
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
                      "Berhasil",
                      style: regular11pt.copyWith(color: textGreen),
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
}
