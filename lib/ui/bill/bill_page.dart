import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/bill/paid/paid_page.dart';
import 'package:geinterra_apps/ui/bill/widgets/my_tab.dart';
import 'package:geinterra_apps/ui/utils/colors.dart';

import '../utils/custom_indicator.dart';
import 'unpaid/unpaid_page.dart';

class BillPage extends StatefulWidget {
  const BillPage({super.key});

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
                  MyTab(title: 'Transaksi'),
                  MyTab(title: 'Selesai'),
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
