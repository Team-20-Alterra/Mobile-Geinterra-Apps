import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geinterra_apps/ui/bill/bill_page.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';
import 'package:geinterra_apps/ui/profile/profile_page.dart';

import '../utils/colors.dart';

class MainPage extends StatefulWidget {
  static const routeName = '/homepage';

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BillPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home_unselected.svg',
              color: Colors.white.withOpacity(0.5),
              width: 30,
              height: 30,
            ),
            activeIcon: SvgPicture.asset(
              'assets/home_selected.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/bill_unselected.svg',
              width: 30,
              height: 30,
              color: Colors.white.withOpacity(0.5),
            ),
            activeIcon: SvgPicture.asset(
              'assets/bill_selected.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Bill',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/profile_unselected.svg',
              width: 30,
              height: 30,
              color: Colors.white.withOpacity(0.5),
            ),
            activeIcon: SvgPicture.asset(
              'assets/profile_selected.svg',
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.white.withOpacity(0.7),
        currentIndex: _selectedIndex,
        backgroundColor: MyColors.greenColor,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
