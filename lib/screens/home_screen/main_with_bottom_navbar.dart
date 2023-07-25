import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/constants/image_strings.dart';
import 'package:youtube_clone/screens/home_screen/library_screen.dart';
import 'package:youtube_clone/screens/home_screen/shorts_screen.dart';
import 'package:youtube_clone/screens/home_screen/subscriptions_screen.dart';

import 'home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const ShortsScreen(),
    Container(),
    const SubscriptionsScreen(),
    const LibraryScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      // Show the bottom modal sheet
      _showBottomModalSheet(context);
    } else {
      // Switch to other screens
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _showBottomModalSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ColoredBox(
          color: MyColors.greyButton,
          child: SizedBox(
            height: 330,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Create',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                createBottomSheetActionForRow(
                    MyImageStrings.shortsInactiveButtonImageBottomNav,
                    'Create a Short'),
                createBottomSheetActionForRow(
                    MyImageStrings.bottomSheetUploadAVideo, 'Upload a Video'),
                createBottomSheetActionForRow(
                    MyImageStrings.bottomSheetGoLive, 'Go live'),
                createBottomSheetActionForRow(
                    MyImageStrings.bottomSheetCreateAPost, 'Create a Post'),
              ],
            ),
          ),
        );
      },
    );
  }

  ListTile createBottomSheetActionForRow(
      String imageString, String titleOfAction) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: MyColors.greyVideo,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 14, // Orijinal fotoğraf çapı
          backgroundImage: AssetImage(imageString),
        ),
      ),
      title: Text(
        titleOfAction,
        style: const TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );
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
