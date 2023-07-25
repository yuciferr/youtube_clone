import 'package:flutter/material.dart';
import 'package:youtube_clone/constants/colors.dart';
import 'package:youtube_clone/constants/image_strings.dart';
import 'package:youtube_clone/constants/text_strings.dart';
import 'package:youtube_clone/screens/home_screen/subscriptions_screen.dart';

import '../../commons/build_card_pages_scrollable_channels.dart';
import '../../commons/build_channel_single_post.dart';
import '../search_page/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    color: MyColors.greyVideo,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const BuildCardPagesScrollableChannels(title: 'All'),
                  const BuildCardPagesScrollableChannels(title: 'Mixes'),
                  const BuildCardPagesScrollableChannels(title: 'Music'),
                  const BuildCardPagesScrollableChannels(title: 'Live'),
                  const BuildCardPagesScrollableChannels(title: 'Game'),
                  const BuildCardPagesScrollableChannels(title: 'Volleyball'),
                  const BuildCardPagesScrollableChannels(title: 'Soccer'),
                  const BuildCardPagesScrollableChannels(title: 'Rp'),
                  const BuildCardPagesScrollableChannels(title: 'Last uploads'),
                  const BuildCardPagesScrollableChannels(
                      title: 'Suggest a feedback'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Column(
                children: const [
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelYusufImage,
                    channelImage: MyImageStrings.dummyDataChannelYusufImage,
                    postDescription: MyStrings.postStringsYusufJobPostTitle,
                    channelDescription:
                        MyStrings.postStringsYusufJobPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelSerhanImage,
                    channelImage: MyImageStrings.dummyDataChannelSerhanImage,
                    postDescription: MyStrings.postStringsSerhanDiaryPostTitle,
                    channelDescription:
                        MyStrings.postStringsSerhanDiaryPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelOnurImage,
                    channelImage: MyImageStrings.dummyDataChannelOnurImage,
                    postDescription: MyStrings.postStringsOnurFrogPostTitle,
                    channelDescription:
                        MyStrings.postStringsOnurFrogPostDescription,
                  ),
                  BuildChannelSinglePost(
                    postImage: MyImageStrings.dummyDataChannelBedirhanImage,
                    channelImage: MyImageStrings.dummyDataChannelBedirhanImage,
                    postDescription: MyStrings.postStringsBedirhanPostTitle,
                    channelDescription:
                        MyStrings.postStringsBedirhanPostDescription,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
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
