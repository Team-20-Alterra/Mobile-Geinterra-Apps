import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/provider/home_provider.dart';
import '../../home/widgets/item_invoice.dart';
import '../../utils/result_state.dart';
import '../../widgets/title_section.dart';

class UnpaidPage extends StatelessWidget {
  const UnpaidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(16), children: [
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
                  itemCount: provider.list.length,
                  itemBuilder: (context, position) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ItemTransaction(
                        invoice: provider.list[position],
                      ),
                    );
                  },
                  padding: const EdgeInsets.all(16),
                );
              }
            case ResultState.Loading:
              return const Center(child: CircularProgressIndicator());
            case ResultState.Error:
              return Center(child: Text(provider.message));
            default:
              return const SizedBox();
          }
        },
      ),
    ]);
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
