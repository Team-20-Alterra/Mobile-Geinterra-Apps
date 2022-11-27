import 'package:flutter/material.dart';
import 'package:geinterra_apps/ui/bill/bill_page.dart';
import 'package:geinterra_apps/ui/home/home_page.dart';

import '../utils/colors.dart';

class MainPage extends StatefulWidget {

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BillPage(),
    Text(
      'Profile',
      style: optionStyle,
    ),
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
            icon: Image.asset(
              'assets/home_unselected.png',
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              'assets/home_selected.png',
              width: 30,
              height: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/bill_unselected.png',
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              'assets/bill_selected.png',
              width: 30,
              height: 30,
            ),
            label: 'Bill',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile_unselected.png',
              width: 30,
              height: 30,
            ),
            activeIcon: Image.asset(
              'assets/profile_selected.png',
              width: 30,
              height: 30,
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
