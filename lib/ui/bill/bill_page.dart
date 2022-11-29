import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/bill/paid/paid_page.dart';
import 'package:geinterra_apps/ui/bill/widgets/my_tab.dart';
import 'package:geinterra_apps/ui/utils/colors.dart';

import '../utils/custom_indicator.dart';
import 'unpaid/unpaid_page.dart';

class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TabBar(
                tabs: const <Widget>[
                  MyTab(title: 'Belum Bayar'),
                  MyTab(title: 'Sudah Bayar'),
                ],
                indicatorColor: MyColors.greenColor,
                indicatorWeight: 4,
                indicator: CustomIndicator(
                  indicatorSize: CustomIndicatorSize.normal,
                  indicatorHeight: 4,
                  indicatorColor: MyColors.greenColor,
                )),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  UnpaidPage(),
                  PaidPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
