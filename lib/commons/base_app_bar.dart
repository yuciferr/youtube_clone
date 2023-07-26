import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/account_page/account_page.dart';

import '../constants/image_strings.dart';
import '../screens/home_screen/subscriptions_screen.dart';
import '../screens/search_page/search_page.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// you can add more fields that meet your needs

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: TextButton(
        onPressed: () {
          // veri çekme isteği atılacak
        },
        child: Image.asset(MyImageStrings.appBarYoutubeLogo),
      ),
      title: const Text(
        'Youtube',
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SubscriptionsScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SearchPage()));
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            // User Profile gidecek
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AccountPage()));
          },
          child: Image.asset(
            MyImageStrings.appBarUserProfileImage,
            height: 33,
            width: 33,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
