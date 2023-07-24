import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/constants/image_strings.dart';
import 'package:youtube_clone/screens/home_screen/subscriptions_screen.dart';

import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 1: Shorts',
      style: optionStyle,
    ),
    Text(
      'Index 2: Add',
      style: optionStyle,
    ),
    SubscriptionsScreen(),
    Text(
      'Index 4: Library',
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(MyImageStrings.homeInactiveButtonImageBottomNav),
              color: Colors.white,
            ),
            backgroundColor: MyColors.blackMain,
            activeIcon: ImageIcon(
              AssetImage(MyImageStrings.homeActiveButtonImageBottomNav),
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(MyImageStrings.shortsInactiveButtonImageBottomNav),
              color: Colors.white,
            ),
            activeIcon: ImageIcon(
              AssetImage(MyImageStrings.shortsActiveButtonImageBottomNav),
              color: Colors.white,
            ),
            backgroundColor: MyColors.blackMain,
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(MyImageStrings.addInactiveButtonImageBottomNav),
              color: Colors.white,
            ),
            activeIcon: ImageIcon(
              AssetImage(MyImageStrings.addInactiveButtonImageBottomNav),
              color: Colors.red,
            ),
            backgroundColor: MyColors.blackMain,
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                  MyImageStrings.subscriptionInactiveButtonImageBottomNav),
              color: Colors.white,
            ),
            activeIcon: ImageIcon(
              AssetImage(
                  MyImageStrings.subscriptionsActiveButtonImageBottomNav),
              color: Colors.white,
            ),
            backgroundColor: MyColors.blackMain,
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(MyImageStrings.libraryInactiveButtonImageBottomNav),
              color: Colors.white,
            ),
            activeIcon: ImageIcon(
              AssetImage(MyImageStrings.libraryActiveButtonImageBottomNav),
              color: Colors.white,
            ),
            backgroundColor: MyColors.blackMain,
            label: 'Library',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
