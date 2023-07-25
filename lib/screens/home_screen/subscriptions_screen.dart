import 'package:flutter/material.dart';

import '../../commons/build_card_pages_scrollable_channels.dart';
import '../../commons/build_channel_single_post.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';
import '../personal_page/personal_page_home.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
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
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelYusufImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelSerhanImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBtAkdenizImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelYusufImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelOnurImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelSerhanImage),
                  buildChannelsSubscribed(
                      MyImageStrings.dummyDataChannelBedirhanImage),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  BuildCardPagesScrollableChannels(title: 'All'),
                  BuildCardPagesScrollableChannels(title: 'Mixes'),
                  BuildCardPagesScrollableChannels(title: 'Music'),
                  BuildCardPagesScrollableChannels(title: 'Live'),
                  BuildCardPagesScrollableChannels(title: 'Game'),
                  BuildCardPagesScrollableChannels(title: 'Volleyball'),
                  BuildCardPagesScrollableChannels(title: 'Soccer'),
                  BuildCardPagesScrollableChannels(title: 'Rp'),
                  BuildCardPagesScrollableChannels(title: 'Last uploads'),
                  BuildCardPagesScrollableChannels(title: 'Suggest a feedback'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
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

  Padding buildChannelsSubscribed(String channelName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: () {
          setState(
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalPageHome(),
                ),
              );
            },
          );
        },
        icon: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(channelName),
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
