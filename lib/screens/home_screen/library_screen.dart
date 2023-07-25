import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/home_screen/subscriptions_screen.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.history,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  label: const Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View all',
                    style: TextStyle(color: Colors.blue, fontSize: 17.0),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                  buildHistoryVideos('What is Flutter?', '12 watched'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.playlist_play_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  label: const Text(
                    'Play Lists',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'View all',
                    style: TextStyle(color: Colors.blue, fontSize: 17.0),
                  ),
                ),
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border.symmetric(
                  horizontal: BorderSide(color: Colors.white24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                      buildHistoryVideos('What is Flutter?', '12 watched'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildHistoryVideos(String title, String viewedNum) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 120,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Text(
                '20:43',
                style: TextStyle(
                  color: MyColors.white,
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          viewedNum,
          style: const TextStyle(color: Colors.white60),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: TextButton(
        onPressed: () {
          // veri çekme isteği atılacak
        },
        child: Image.asset(MyImageStrings.appBarYoutubeLogo),
      ),
      title: const Text(
        'Youtube',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarConnectToDevice),
            size: 250.0,
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
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarNotification),
            size: 250.0,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(MyImageStrings.appBarSearch),
            size: 250.0,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            // User Profile gidecek
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
}
